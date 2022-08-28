import smtplib
import ssl
from email.message import EmailMessage

#https://www.youtube.com/watch?v=g_j6ILT-X0k&ab_channel=FrankAndrade

# Define email sender and receiver
email_sender = 'dreampath007@gmail.com'
email_password = 'zlfoppapmyyalavv'
email_receiver = 'jeevan102002@gmail.com'

# Set the subject and body of the email
subject = 'Test Email'
body = """
Hello there this is from Dreampath Career Counselling , we request you to give your valuable feedback!
"""

em = EmailMessage()
em['From'] = email_sender
em['To'] = email_receiver
em['Subject'] = subject
em.set_content(body)

def myemail(mdata):
    edata=[]
    for key, value in mdata.items():
        if(key=="email ID"):
            edata.append(value)
    for i in edata: 
        context = ssl.create_default_context()
        with smtplib.SMTP_SSL('smtp.gmail.com', 465, context=context) as smtp:
            smtp.login('dreampath007@gmail.com', 'zlfoppapmyyalavv')
            smtp.sendmail('dreampath007@gmail.com', i , em.as_string())

# Add SSL (layer of security)
# context = ssl.create_default_context()

# # Log in and send the email
# with smtplib.SMTP_SSL('smtp.gmail.com', 465, context=context) as smtp:
#     smtp.login(email_sender, email_password)
#     smtp.sendmail(email_sender, email_receiver, em.as_string())