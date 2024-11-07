# Import Flask class from flask package
from flask import Flask

# Initialize the Flask app
app = Flask(__name__)

# Define a route for the root URL
@app.route("/")
def home():
    return "Hello from Flask in Docker!"

# Run the application on the specified host and port
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)