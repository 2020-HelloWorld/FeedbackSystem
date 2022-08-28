import firebase_admin 
import pandas as pd
from stage1_anal import* 
from firebase_admin import credentials 
from firebase_admin import firestore
import datetime
from email_test import *

cred = credentials . Certificate ( "serviceAccountKey.json" ) 
firebase_admin.initialize_app ( cred )

db=firestore.client()
d1 = dict()
d2 = dict()
result=db.collection('Dreampath').document('2017').collection('Student').document("S1").get()
for doc in db.collection('Dreampath').document('2017').collection('Student').get():
    d1 = myscore1(doc.to_dict())
for doc in db.collection('Dreampath').document('2019').collection('Student').get():
    d2 = myscore1(doc.to_dict())
    

df1=pd.DataFrame(d1)
df2=pd.DataFrame(d2)
plt.bar(df1["Name"], df1["Stage 1 Measure"], color ='maroon',
		width = 0.3)
plt.xlabel("Students Enrolled")
plt.ylabel("Impact Measure")
plt.title("Impact Analysis")
plt.show()