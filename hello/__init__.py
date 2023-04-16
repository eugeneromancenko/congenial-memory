"""
This module defines the Flask application for the Hello World app.
"""

import os
from flask import Flask


def create_app():
    """
    Display a 'Hello, World' message.
    """
    app = Flask(__name__)

    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route("/")
    def hello():
        """
        Display a 'Hello, World' message.
        """
        return "Hello, World"

    return app
