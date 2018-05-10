from datetime import date
from datetime import datetime, timedelta

def dateMinusDays(total):
    d= (datetime.today() - timedelta(days=total))
    return str(d.date())

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
 'city name':'cityName',
 'day before yesterday':dateMinusDays(2),
 'yesterday':dateMinusDays(1),
 'today':  str(date.today()),
 }

def applyCommonNlp(query):
    for i in columnDict.keys():
        query = query.replace(i,columnDict[i])

    return query