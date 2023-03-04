from flask import Flask
import random

app = Flask(__name__)

@app.route("/")
def hello():
    return """
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="{{ url_for('static', filename='style.css') }}">
            </head>
            <body>
                <h1>Welcome to my random container</h1>
                <p>The Id is: """ + str(random.randint(1, 100)) + """</p>
            </body>
        </html>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
