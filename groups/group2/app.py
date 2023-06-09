# Importa la clase flask del modulo flask
from flask import Flask
# Importa el modulo logging
import logging

# Se crea una instancia de la clase flask llamada app y esta variable app se utiliza para configurar el resto del programa
app = Flask(__name__)

# crea una función para el usuario 2
@app.route('/suma', methods=['GET'])
def suma():
    result = 1 + 1
    return print(result)




# Arranque del servidor o inicio del programa
if __name__ == '__main__':
    # Se configura el log
    logging.basicConfig(filename='request.log', level=logging.DEBUG)
    # Se ejecuta el servidor
    app.run(host='0.0.0.0', port=8080)
