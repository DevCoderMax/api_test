from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "API 2 - Rodando na porta 5002!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)
