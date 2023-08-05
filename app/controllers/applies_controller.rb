class AppliesController < ApplicationController
  def index
    # @applies = Apply.all
  end

  def new
    @apply = Apply.new

  end

  def thank_you

  end

  def create
    @apply = Apply.new(apply_params)
    if @apply.valid?
        # Save the uploaded image to a temporary location
        uploaded_image = apply_params[:photo]
        file_path = Rails.root.join('storage', uploaded_image.original_filename)
        File.open(file_path, 'wb') do |file|
          file.write(uploaded_image.read)
        end

        # Call the mailer to send the email with the attachment
        ApplicationPageMailer.confirm_application(@apply, file_path).deliver_now

        # Delete the temporary file after sending the email
        File.delete(file_path)
      # @apply.request = request
      # @apply.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end

    redirect_to thank_you_path
  end
end

private

def apply_params
  params.require(:apply).permit(:name, :dob, :gender, :marriage, :occupation, :email, :phone, :country, :photo)
end
