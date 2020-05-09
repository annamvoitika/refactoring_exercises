class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    if fancy
      mail_server.send_message({ to: @email, body: "Welcome to MyProduct, fancy person!" })
    else
      mail_server.send_message({ to: @email, body: "Welcome to MyProduct" })
    end
  end
end
