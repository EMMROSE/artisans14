class ContactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.information.subject
  #
  def information(contact)
    @contact = contact
    @contact.emails.each do |element|
      mail(
        to:       "#{element}",
        subject:  "Nouveau message depuis GA14.fr"
      )
    end
  end
end
