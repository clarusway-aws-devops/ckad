from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def welcome():
    appname = os.environ.get('APP_NAME')
    return f'Welcome to {appname}'

if __name__ == '__main__':
   app.run(host='0.0.0.0', port=80)