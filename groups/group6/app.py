# Importa la clase flask del modulo flask
from flask import Flask
# Importa el modulo logging
import logging

# Se crea una instancia de la clase flask llamada app y esta variable app se utiliza para configurar el resto del programa
app = Flask(__name__)


@app.route('/', methods=['GET'])
# Define una función llamada hell_world
# Nos ayuda a encapsular el código, mantener funcionalidades...
def hello_world():
    return 'Hello World!'


## Crea una nueva función para el usuario

## Crea una nueva función para el usuario 2


## Crea una nueva función para el usuario 3


# Arranque del servidor o inicio del programa
if __name__ == '__main__':
    # Se configura el log
    logging.basicConfig(filename='request.log', level=logging.DEBUG)
    # Se ejecuta el servidor
    app.run(host='0.0.0.0', port=8080)
