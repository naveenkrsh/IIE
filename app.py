from flask import Flask
from flask import jsonify
from flask import json
from flask import request
from ln2sql.ln2sql import Ln2sql

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Dockerized'

@app.route('/query', methods = [ 'POST'])
def gen_query():
    body = request.get_json()
    query = body["Text"]
    print(query)
    sql = ln2sql = Ln2sql(
        database_path='database_store/ism.sql',
        language_path='lang_store/english.csv',
        json_output_path=None,
        thesaurus_path=None,
        stopwords_path=None,
    ).get_query(query)
    print("Successsssssssssssssssssssssssssssssssssssssssssssssssssssss")
    return sql


if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')