import http.server
import socketserver
import os

# Usamos el puerto 8000 o el que nos asigne la nube
PORT = int(os.environ.get("PORT", 8000))
Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Servidor web funcionando en el puerto {PORT}...")
    # Creamos un archivo index.html rápido para que se vea en la web
    with open("index.html", "w") as f:
        f.write("<h1>¡Hola! Mi entorno tecnico para IA esta funcionando perfectamente.</h1>")
    httpd.serve_forever()