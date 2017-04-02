from flask import flask

app = flask(__name__)

@app.route('/')
def hello():
	return 'Flask Dockerized'

if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0')
	