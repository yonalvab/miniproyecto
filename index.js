import mysql2 from "mysql2";
import http from "node:http";
import fs from "node:fs";
import { pool } from "./db.js";

// Configurar la conexión a la base de datos
const connection = mysql2.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "miniproyecto",
});

// Conectar a la base de datos
connection.connect((err) => {
    if (err) {
        console.log("Error al conectar a la base de datos:", err);
        return;
    }
    console.log("Conexión exitosa a la base de datos");
});

const server = http.createServer((req, res) => {
    const { method, url } = req;

    if (method === "GET") {
        switch (url) {
            case "/":
                const pantallaInicio = "./slash.html";
                fs.readFile(pantallaInicio, (err, data) => {
                    if (err) {
                    res.writeHead(500);
                    return res.end('Error interno del servidor');
                    }
                    res.writeHead(200, {'Content-Type': 'text/html'});
                    res.write(data);
                    res.end();
                });
                break;
            case "/api/usuarios":
                res.writeHead(200, { "Content-Type": "application/json" });
                connection.query("SELECT * FROM usuarios", (err, results) => {
                    if (err) {
                        console.log(err);
                        res.end(JSON.stringify({ error: "Error al obtener los datos" }));
                    } else {
                        res.end(JSON.stringify(results));
                    }
                })
                break;
            case '/api/usuarios/export':
                
                connection.query('SELECT * FROM usuarios', (err, results) => {
                    if (err) {
                      console.log(err);
                      res.writeHead(500, { "Content-Type": "application/json" });
                      res.end(JSON.stringify({ error: "error no hay nada" }));
                    } else {
                        const encabezado = Object.keys(results[0]).join(',') + '\n';
                      const dataCsv = results.map(obj => Object.values(obj).join(',')).join('\n');
                      const dataConEncabezado = encabezado + dataCsv;
                      fs.writeFile("usuarios.csv", dataConEncabezado, (err) => {
                        if (err) {
                          console.error('Error al guardar los datos en el archivo:', err);
                          res.writeHead(500, { 'Content-Type': 'application/json' });
                          res.end('Error interno del servidor');
                          return;
                        }
                        console.log('Datos guardados en usuarios.csv');
                      })
                      res.writeHead(200, { "Content-Type": "application/json" });
                      res.end(dataConEncabezado);
                    }
                  });
                break;
            case '/api/usuarios/import':
                fs.readFile('usuarios.csv', 'utf8', (err, data) => {
                    if (err) {
                        if (err.code === 'ENOENT') {
                            console.error('Error reading usuarios.csv: File not found');
                            res.writeHead(404, { 'Content-Type': 'application/json' });
                            res.end(JSON.stringify({ error: 'File not found' }));
                        } else {
                            console.error('Error reading usuarios.csv:', err);
                            res.writeHead(500, { 'Content-Type': 'application/json' });
                            res.end(JSON.stringify({ error: 'Error reading usuarios.csv' }));
                        }
                        console.error('Error reading usuarios.csv:', err);
                        res.writeHead(500, { 'Content-Type': 'application/json' });
                        res.end(JSON.stringify({ error: 'Error reading usuarios.csv' }));
                    } else {
                        const rows = data.trim().split('\n');
                        const headers = rows[0].split(',');
                        
                        const values = [];
            
                        for (let i = 1; i < rows.length; i++) {
                            const row = rows[i].split(',');
                            const userId = row[0];
                            const userEmail = row[1];
                            connection.query('SELECT * FROM usuarios WHERE id = ? OR email = ?', [userId, userEmail], (err, results) => {
                                if (err) {
                                    console.error('Error querying database:', err);
                                    res.writeHead(500, { 'Content-Type': 'application/json' });
                                    res.end(JSON.stringify({ error: 'Error querying database' }));
                                } else {
                                    if (results.length === 0) {
                                        values.push(row);
                                    }
                                }
                            });
                        }
                        const sql = 'INSERT INTO usuarios (id, nombres, apellidos, direccion, correo, dni, edad, fecha_creacion, telefono) VALUES ?';
                        connection.query(sql, [values], (err, results) => {
                            if (err) {
                                console.error('Error importando data:', err);
                                res.writeHead(500, { 'Content-Type': 'application/json' });
                                res.end(JSON.stringify({ error: 'Error importando data' }));
                            } else {
                                console.log('Datos importados exitosamente');
                                res.writeHead(200, { 'Content-Type': 'application/json' });
                                res.end(JSON.stringify({ message: 'Datos importados exitosamente' }));
                            }
                        });
                    }
                });
                break;
            default:
                res.writeHead(404, { "Content-Type": "text/html" });
                res.write("<h1>No se encuentra</h1>")
                res.end();
                break;
        }
    }
    
})
server.listen(3000, () => console.log("servidor levantado con exito"));