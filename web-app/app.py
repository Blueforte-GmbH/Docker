import time
import redis
import os
from flask import Flask, render_template

# PEOPLE_FOLDER = os.path.join('static', 'people_photo')



app = Flask(__name__, template_folder='template')
# app.config['UPLOAD_FOLDER'] = PEOPLE_FOLDER
cache = redis.Redis(host='redis', port=6379)

def get_hit_count():
    retries = 5
    while True:
        try:
            return cache.incr('hit')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)

@app.route('/') 
def hello():
    count = get_hit_count()
    return '❤️ Hello MDAs! from the Docker container. We have been here {} times! \n'.format(count)

@app.route('/bf')
def index():
    # full_filename = os.path.join(app.config['UPLOAD_FOLDER'], 'Blueforte_Profilbild_300x300.png')
    # print("Full file name is :--->", full_filename)
    return render_template("index.html")