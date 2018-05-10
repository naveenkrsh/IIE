from flask import Flask
from flask import jsonify
from flask import json
from flask import request
from ln2sql.ln2sql import Ln2sql

from nltk.stem import WordNetLemmatizer
from nltk.tokenize import word_tokenize

import rules

app = Flask(__name__)




@app.route('/')
def hello_world():
    return 'Flask Dockerized'

@app.route('/query', methods = [ 'POST'])
def gen_query():
    body = request.get_json()
    query = body["Text"]
    query = query.lower()
    query=rules.applyCommonNlp(query)

    

    query = query.lower()
    print(query)
    wnl = WordNetLemmatizer()
    tokens = [token.lower() for token in word_tokenize(query)]
    lemmatized_words = [wnl.lemmatize(token) for token in tokens]
    query=' '.join(lemmatized_words)

  
    print(query)

    sql = Ln2sql(
        database_path='database_store/ism.sql',
        language_path='lang_store/english.csv',
        json_output_path=None,
        thesaurus_path=None,
        stopwords_path=None,
    ).get_query(query)
    #print("Successsssssssssssssssssssssssssssssssssssssssssssssssssssss")
    return sql


if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')