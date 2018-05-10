from flask import Flask
from flask import jsonify
from flask import json
from flask import request
from ln2sql.ln2sql import Ln2sql

from nltk.stem import WordNetLemmatizer
from nltk.tokenize import word_tokenize



app = Flask(__name__)

columnDict = {'actual service': 'ActualService',
 'category id': 'CategoryId',
 'cause': 'Cause',
 'closed by': 'ClosedBy',
 'closed date time': 'ClosedDateTime',
 'closed date': 'ClosedDateTime',
 'closed on': 'ClosedDateTime',
 'closed duration': 'ClosedDuration',
 'created by': 'CreatedBy',
 'created date time': 'CreatedDateTime',
 'created date': 'CreatedDateTime',
 'created on': 'CreatedDateTime',
 'customer location': 'CustomerLocation',
 'email': 'Email',
 'id': 'ID',
 'impact': 'Impact',
 'incident number': 'IncidentNumber',
 'last mod by': 'LastModBy',
 'last mod date time': 'LastModDateTime',
 'phone': 'Phone',
 'priority': 'Priority',
 'resolution': 'Resolution',
 'service': 'Service',
 'sla': 'SLA',
 'source': 'Source',
 'status': 'Status',
 'subject': 'Subject',
 'symptom': 'Symptom',
 'urgency': 'Urgency',
 'category name':'CategoryName',
 'city name':'cityName'
 }


@app.route('/')
def hello_world():
    return 'Flask Dockerized'

@app.route('/query', methods = [ 'POST'])
def gen_query():
    body = request.get_json()
    query = body["Text"]
    query = query.lower()
    for i in columnDict.keys():
        query = query.replace(i,columnDict[i])

    query = query.lower()
    print(query)
    wnl = WordNetLemmatizer()
    tokens = [token.lower() for token in word_tokenize(query)]
    lemmatized_words = [wnl.lemmatize(token) for token in tokens]
    query=' '.join(lemmatized_words)

  
    print(query)

    sql = Ln2sql(
        database_path='database_store/city.sql',
        language_path='lang_store/english.csv',
        json_output_path=None,
        thesaurus_path=None,
        stopwords_path=None,
    ).get_query(query)
    #print("Successsssssssssssssssssssssssssssssssssssssssssssssssssssss")
    return sql


if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')