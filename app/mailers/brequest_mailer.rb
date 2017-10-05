class BrequestMailer < ApplicationMailer
  default to: 'olstar.ru@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml with the following lookup:
  #   en.brequest_mailer.contact.subject
  #   en.brequest_mailer.accommodation.subject
  #   en.brequest_mailer.workshop.subject
  #   en.brequest_mailer.tailor_made.subject


  def contact(brequest)
    @brequest = brequest

    mail(
      from:     @brequest.email,
      cc:       @brequest.email,
      subject:  "Sentiers de Soi - Prise de contact"
    )
  end


  def accommodation(brequest)
    @brequest = brequest

    mail(
      from:     @brequest.email,
      cc:       @brequest.email,
      subject:  "Sentiers de Soi - Demande d'hébergement"
    )
  end


  def workshop(brequest)
    @brequest = brequest

    mail(
      from:     @brequest.email,
      cc:       @brequest.email,
      subject:  "Sentiers de Soi - Demande de participation à un atelier"
    )
  end


  def tailor_made(brequest)
    mail(
      from:     @brequest.email,
      cc:       @brequest.email,
      subject:  "Sentiers de Soi - Evénement sur-mesure"
    )
  end
end
