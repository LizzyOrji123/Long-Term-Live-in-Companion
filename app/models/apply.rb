class Apply < MailForm::Base
  attribute :name,      validate: true
  attribute :dob,       validate: true
  attribute :gender,    validate: true
  attribute :marriage,  validate: true
  attribute :occupation, validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,     validate: true
  attribute :country,   validate: true
  attribute :photo,   validate: true, content_type: [:png, :jpg, :jpeg]
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Application Form Inquiry",
      :to => "longtermliveincompanion@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
