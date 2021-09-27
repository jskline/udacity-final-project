import werkzeug
werkzeug.cached_property = werkzeug.utils.cached_property
from flask import Flask
import flask.scaffold
flask.helpers._endpoint_from_view_func = flask.scaffold._endpoint_from_view_func

from flask_restplus import Resource, Api
from typing import Dict

app = Flask(__name__)
api = Api(app)


@api.route('/hello')
class HelloWorld(Resource):
    def get(self) -> Dict[str, str]:
        return {'hello': 'world'}


if __name__ == '__main__':
    app.run(debug=True)
