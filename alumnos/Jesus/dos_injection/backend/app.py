from flask import Flask, jsonify
import logging
import mysql.connector

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_user_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'database',
        'port': '3306',
        'database': 'security',
        'auth_plugin': 'mysql_native_password',
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = 'SELECT * FROM users'
    cursor.execute(query)

    results = cursor.fetchall()

    data = []
    for row in results:
        # Perform any necessary data processing here
        data.append(row)

    cursor.close()
    connection.close()

    return jsonify(data)


if __name__ == '__main__':
    logging.basicConfig(filename='request.log', level=logging.DEBUG)
    app.run(host='0.0.0.0', port=8080)
