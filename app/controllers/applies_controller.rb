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
      # @apply.request = request
      # @apply.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
    ApplicationPageMailer.confirm_application(@apply).deliver_now
    redirect_to thank_you_path
  end
end

private

def apply_params
  params.require(:apply).permit(:name, :dob, :gender, :marriage, :occupation, :email, :phone, :country, :photo)
end
