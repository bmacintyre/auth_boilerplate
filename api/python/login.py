from flask import Flask, request, flash, url_for, redirect, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
from sqlalchemy.sql import text
import datetime
import json
import jwt
import os

CLIENT_AUTHORITY = 'brucemacintyre.com'
CLIENT_ID        = '4a2fa3b4-c160-4436-82d3-148f602c9aa8'
CLIENT_SECRET    = '5SquUVG0Tpg57ywoxUbPPgjtK0OkX1ttipVlfBRRrpo'

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:12345@localhost/py_api'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

engine = create_engine(app.config['SQLALCHEMY_DATABASE_URI'])

@app.route('/api', methods=['POST'])
def api():
    with engine.connect() as con:

        if request.method == 'POST':
            usr = request.form.get("username");
            pas = request.form.get('password');

            rs = con.execute(
                text('SELECT * FROM auth WHERE username = :u AND passcode = :p LIMIT 1'), 
                u = usr, p = pas)

            for row in rs:
                ## Todo store Token in User table
                return generate_grant_token(row.username)
            else:
                return 'Error: Your Login Name or Password is invalid'

    con.commit()
    con.close()
            

def generate_grant_token(username):
    now = datetime.datetime.utcnow()
    userid = 'acct:{username}@{authority}'.format(username=username,
                                                 authority=CLIENT_AUTHORITY)
    payload = {
      'aud': 'brucemacityre.com',
      'iss': CLIENT_ID,
      'sub': userid,
      'nbf': now,
      'exp': now + datetime.timedelta(minutes=10),
    }
    return jwt.encode(payload, CLIENT_SECRET, algorithm='HS256')


@app.route('/api/data', methods=['POST'])
def data():
    with engine.connect() as con:

        if request.method == 'POST':
            tkn = request.form.get("token");

            ###########################
            ## Todo check token

            # rs = con.execute(
            #     text('SELECT * FROM auth WHERE token = :u LIMIT 1'), 
            #     u = usr)

            # for row in rs:
            rs = con.execute(
                    text('SELECT * FROM mobile_data LIMIT 22'))

            data_json = []

            for row in rs:
                data_json.append(dict(row))

            return json.dumps(data_json)

            # else:
            #     return 'Error: Token invalid'

    con.commit()
    con.close()

if __name__ == '__main__':
    app.run(debug=True)