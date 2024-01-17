from flask import Flask 
from flask import render_template 
from flask import send_from_directory
  
# creates a Flask application 
app = Flask(__name__) 
  
  
@app.route("/") 
def main(): 
    return render_template('index.html') 

@app.route('/style/<path:path>')
def serve_css(path):
    return send_from_directory('templates/css', path)

@app.route('/videos/<path:path>')
def serve_image(path):
    return send_from_directory('templates/videos', path)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=6969)
