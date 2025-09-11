from flask import Flask

app = Flask(__name__)

@app.get("/")
def home():
	return {"status": "ok", "message": "Hello! from CI/CD Pipeline Demo!"}

if __name__ == "__main__":
	app.run(host="0.0.0.0", port=8080)
