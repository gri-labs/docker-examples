# Importa la clase flask del modulo flask
from flask import Flask

# Se crea una instancia de la clase flask llamada app y esta variable app se utiliza para configurar el resto del programa
app = Flask(__name__)


@app.route('/fecha', methods=['GET'])
# Define una función llamada hell_world
# Nos ayuda a encapsular el código, mantener funcionalidades...
def fecha():
    DATE_NOW="Wilson archivo"
    return print(DATE_NOW)

## Crea una nueva función para el usuario 1


## Crea una nueva función para el usuario 2


# Arranque del servidor o inicio del programa
if __name__ == '__main__':
    # Se configura el log
    logging.basicConfig(filename='request.log', level=logging.DEBUG)
    # Se ejecuta el servidor
    app.run(host='0.0.0.0', port=8080)
