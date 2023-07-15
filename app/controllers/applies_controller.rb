class AppliesController < ApplicationController
  def index
    # @applies = Apply.all
  end

  def new
    @apply = Apply.new
  end

  def show
    @applies = Apply.find(params[:id])
    render :show
  end

  def create
    @apply = Apply.new(apply_params)
    if @apply.save
      # @apply.request = request
      # @apply.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
    ApplicationPageMailer.confirm_application(@apply).deliver_now
    redirect_to apply_path(@apply)
  end
end

private

def apply_params
  params.require(:apply).permit(:name, :dob, :gender, :marriage, :occupation, :email, :phone, :country, :photo)
end
