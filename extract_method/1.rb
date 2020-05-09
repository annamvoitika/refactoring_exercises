def send_email_to(user)
  email = user.email.strip
  mail  = Mail.new(email)

  send(mail)
end

private

def send(mail)
  mail.send_message
end 
