import time
import redis
from flask import Flask, render_template

app = Flask(__name__, template_folder='template')
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
    return '🍺 Hello MDAs! from the Docker container. We have been here {} times! \n'.format(count)

@app.route('/bf')
def index():
    return render_template("index.html")