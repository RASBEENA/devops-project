from flask import Flask, jsonify
import os   # 👈 Import os module!

app = Flask(__name__)

@app.route("/health")
def health():
    return jsonify({"status": "ok"})
    
@app.route("/show_api_url")
def show_api_url():
    api_url = os.getenv("API_URL", "Not Set")
    return jsonify({"API_URL": api_url})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
