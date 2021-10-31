import werkzeug
werkzeug.cached_property = werkzeug.utils.cached_property
from flask import Flask
import flask.scaffold
flask.helpers._endpoint_from_view_func = flask.scaffold._endpoint_from_view_func

from flask_restplus import Resource, Api
from typing import Dict

app = Flask(__name__)
api = Api(app, version="1.3")


@api.route('/status')
class StatusResource(Resource):
    def get(self) -> Dict[str, str]:
        return {'status': 'online'}


if __name__ == '__main__':
    app.run(debug=True)
