class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nb_guests
  attribute :subject
  attribute :date
  attribute :checkin
  attribute :checkout

  def headers
    {
      :subject => "My Contact Form",
      :to => "olstar.ru@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
