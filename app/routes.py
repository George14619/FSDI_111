from flask import Flask                        # From the flask package and module import the flask class

app = Flask(__name__)                          # Create an instance of the flask class


@app.get("/")                                  # Flask decorator that wraps a function below it
def profile():                                 # A wrapped function is a "view function"
    me = {                                     # Python3 dictionary
        "first_name": "George",
        "last_name": "Robinson Jr",
        "hobbies": "Drawing/Painting",
        "is_online": True
    }
    return me                                  # Returning a dict from a view function converts it to JSON!