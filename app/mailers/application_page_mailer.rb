class ApplicationPageMailer < ApplicationMailer
  def confirm_application(apply, file_path)
    @apply = apply
    attachments[File.basename(file_path)] = File.read(file_path)
    mail(to: "longtermliveincompanion@gmail.com", subject: "I'm_Interested")
  end

  # def send_email_with_attachment(file_path)
  #   attachments[File.basename(file_path)] = File.read(file_path)

  # end
end
