from flask import Flask, request, redirect
import random
import ssl
import cryptography

app = Flask(__name__)

# Redirect HTTP to HTTPS
@app.before_request
def redirect_https():
    if request.headers.get('X-Forwarded-Proto') == 'http':
        url = request.url.replace('http://', 'https://', 1)
        return redirect(url, code=301)

# Generate random string
@app.route("/")
def hello():
    return "<h1>Welcome to my random container</h1><p>Random string: " + str(random.getrandbits(128)) + "</p>"

if __name__ == "__main__":
    # Enable HTTPS with ad-hoc SSL context
    
    app.run(ssl_context="adhoc", host="0.0.0.0", port=443)
