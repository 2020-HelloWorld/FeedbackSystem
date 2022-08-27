import firebase_admin 
from firebase_admin import credentials 
from firebase_admin import firestore
import datetime

cred = credentials . Certificate ( "serviceAccountKey.json" ) 
firebase_admin.initialize_app ( cred )

db=firestore.client()

result=db.collection('Dreampath').document('2015').collection('Student').document("S1").get()
for doc in db.collection('Dreampath').document('2015').collection('Student').get():
    print(doc.to_dict())

