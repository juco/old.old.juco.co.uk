class ContactMailer < ActionMailer::Base
  
  CONTACT_EMAIL = 'julian@juco.co.uk'

  default from: 'me@juco.co.uk'

  def contact_mail(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(
      to: CONTACT_EMAIL,
      subject: "Website contact from: " + name,
      template: 'mailers/contact'
    )
  end
end
