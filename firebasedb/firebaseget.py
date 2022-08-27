import firebase_admin 
from stage1_anal import* 
from firebase_admin import credentials 
from firebase_admin import firestore
import datetime

cred = credentials . Certificate ( "serviceAccountKey.json" ) 
firebase_admin.initialize_app ( cred )

db=firestore.client()

result=db.collection('Dreampath').document('2017').collection('Student').document("S1").get()
for doc in db.collection('Dreampath').document('2017').collection('Student').get():
    myscore1(doc.to_dict())
    

