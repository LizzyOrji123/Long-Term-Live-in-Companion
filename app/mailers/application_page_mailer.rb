class ApplicationPageMailer < ApplicationMailer
  def confirm_application(apply)
    @apply = apply
    mail(to: "longtermliveincompanion@gmail.com", subject: "TEST_EMAIL")
  end
end
