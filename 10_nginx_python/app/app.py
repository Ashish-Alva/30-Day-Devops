from flask import Flask
import os

app = Flask(__name__)

VERSION = os.environ.get("VERSION", "unknown")

@app.route('/')
def home():
    color = "#1a73e8" if VERSION == "blue" else "#34a853"
    return f"""
    <html>
      <body style="background:{color}; color:white; font-family:sans-serif;
                   display:flex; align-items:center; justify-content:center;
                   height:100vh; margin:0; flex-direction:column;">
        <h1 style="font-size:4rem;">🚀 {VERSION.upper()} Environment</h1>
        <p style="font-size:1.5rem;">Blue-Green Deployment — Day 11</p>
      </body>
    </html>
    """

@app.route('/health')
def health():
    return {"status": "ok", "version": VERSION}, 200

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)