import time
import sqlite3
from flask import Flask, jsonify, g
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

@app.before_request
def before_request():
    g.start = time.time()

def get_users():
    db = sqlite3.connect('Users.db')
    cur = db.cursor()
    cur.execute('SELECT * FROM Users')
    rows = cur.fetchall()
    db.close()
    return rows

class UserController(Resource):
    def get(self):
        users = get_users()
        executionTime = time.time() - g.start
        stats = {
            "raw": executionTime,
            "millis": int(executionTime * 1000)
        }
        return jsonify(a_execution_time=stats, data=users)

api.add_resource(UserController, '/')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
