import firebase_admin 
from firebase_admin import credentials 
from firebase_admin import firestore
import datetime

cred = credentials . Certificate ( "serviceAccountKey.json" ) 
firebase_admin.initialize_app ( cred )

db=firestore.client()

Q1={'Was the program good and useful?','Did you understand most of the topics/information shared?','Did you enjoy the activities?','Are the presentations /  videos/work materials good to see, read and easy to understand?','Has your knowledge increased about different career paths / job opportunities / preparation?','Do you have better clarity now on your next steps than before the program?','Do you recommend this program for your juniors / other friends too?','Will you reach out to us if you have questions?','Is it easy for you to set your own goals now? Can you do it?','Has your career choices changed with new or more options now?','Are you more aware and confident about your career choices as well as decision making now?','Which part of the session you enjoyed the most?','Which part of the session you enjoyed the least?','Overall rating for the workshop? Rating Scale 1-10'}

Q2={'Did they attend Career Guidance workshop by DreamPath Foundation?','2.	What is the student doing now(after 10th)?','3.	Which course has student joined after 10th?','Why did he/she choose to join the above?','5.	How did he/she decide (eg parents decided, friends were joining that college, school teachers, advice self decision with parents etc?','6.	How did the DreamPath workshop help him/her with the choice?','If so, what way?','Was the workshop useful and other resources from DreamPath useful?'}

Q3={'Did they attend Career Guidance workshop by DreamPath Foundation?','What is the student doing now(after 12th)?','Which course has student joined after 12th?','Why did he/she choose to join the above?','How did he/she decide (eg parents decided, friends were joining that college, school teachers advice, self decision with parents etc?','How did the DreamPath workshop help him/her with the choice?'
,'If so what way?','Was the workshop useful and other resources from DreamPath useful?'}

db.collection('Dreampath').document('2017').collection('Student').document("S1").set({'name':'','email ID':'','Phone no.':'','Date':'','Q1[0]':True,'Q1[0].1':'','Q1[1]':True,'Q1[1].1':'','Q1[2]':True,'Q1[2].1':'','Q1[3]':True,'Q1[3].1':'','Q1[4]':True,'Q1[4].1':'','Q1[5]':True,'Q1[5].1':'','Q1[6]':True,'Q1[6].1':'','Q1[7]':True,'Q1[7].1':'','Q1[8]':True,'Q1[8].1':'','Q1[9]':'','Q1[10]':'','Q1[11]':'','Q1[12]':'','Q1[13]':0,'Q2[0]':True,'Q2[0].1':'','Q2[1]':'','Q2[2]':'','Q2[3]':'','Q2[4]':'','Q2[5]':'','Q2[6]':'','Q2[7]':True,'Q2[7].1':'','Q3[0]':True,'Q3[0].1':'','Q3[1]':'','Q3[2]':'','Q3[3]':'','Q3[4]':'','Q3[5]':'','Q3[6]':'','Q3[7]':True,'Q3[7].1':''})