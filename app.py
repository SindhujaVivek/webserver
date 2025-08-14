from flask import Flask, request
import os

app = Flask(__name__)

@app.route('/')
def index():
    return "Welcome to the vulnerable Flask app!"

# Arbitrary command execution (!!! DANGEROUS)
@app.route('/ping')
def ping():
    ip = request.args.get('ip')
    return os.popen(f"ping -c 1 {ip}").read()

if __name__ == '__main__':
    # Running with debug=True is a security risk
    app.run(host='0.0.0.0', port=5000, debug=True)
