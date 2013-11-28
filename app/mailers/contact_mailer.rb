class ContactMailer < ActionMailer::Base  
  CONTACT_EMAIL = 'julian@juco.co.uk'
  default from: 'me@juco.co.uk'

  def contact_mail(contact)
    @name = contact.name
    @email = contact.email
    @message = contact.message
    mail(
      to: CONTACT_EMAIL,
      subject: "Website contact from: " + @name,
      template: 'mailers/contact'
    )
  end
end
