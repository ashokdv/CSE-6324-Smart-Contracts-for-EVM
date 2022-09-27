#importing the Yagmail library
import yagmail

def mail_sender():
  #initializing the server connection
  try:
    yag = yagmail.SMTP(user='dvasr.uta@gmail.com', password='fiveqybuknhqijej')
    #sending the email
    yag.send(to='dvasr.uta@gmail.com', subject='Analysis Report', contents='Please find the report attached. \n\n Note: This is an Auto-generated mail. Please do not reply to this mail', attachments= '../README.md')
    print("Email sent successfully")
  except Exception as e:
    print("Error, mail not sent", e)


mail_sender()