class ApplicationPageMailer < ApplicationMailer
  def confirm_application(apply)
    @apply = apply
    mail(to: "longtermliveincompanion@gmail.com", subject: "TEST_EMAIL")
  end
end
/home/lizzy123/code/LizzyOrji123/Long-Term-Live-in-Companion/app/controllers/concerns
