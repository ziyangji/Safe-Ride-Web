from flask import Flask, render_template, request
import os
templateDir = os.path.abspath('templates')
app = Flask(__name__, static_url_path='/static',template_folder=templateDir)

@app.route('/')
@app.route('/index.html')
def index_page():
    return render_template("index.html")

@app.route('/login.html')
def login_page():
    return render_template("login.html")

@app.route('/signup.html')
def signup_page():
    return render_template("signup.html")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8888)