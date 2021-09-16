"""
This app is contoller for Kitchen Master2
Written by Junho Shin, 09-2021
"""

from flask import Flask, render_templates

app = Flask(__name__)


@app.route('/')
def index():
    return "Hello Kitchen Master"

# Login function
# If User isn't join this controller, go to join function
@app.route('/login')
def login():
    pass

# Join function
# If User will have joined this controller, back to login function
@app.route('/join')
def join():
    pass





if __name__ == '__main__':
    app.run(port = 8000, debug=True)



