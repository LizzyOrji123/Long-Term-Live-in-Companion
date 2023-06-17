class ApplyController < ApplicationController
  def index
    @applies = Apply.all
  end

  def new
    @applies = Apply.new
  end

  def show
    @applies = Apply.find(params[:id])
    render :show
  end

  def create
    @applies = Apply.new
    @applies.save

    @apply.request = request
    if @apply.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
    redirect_to apply_path


  end
end

private

def apply_params
  params.require(:id).permit(:name, :dob, :gender, :marriage, :occupation, :email, :phone, :country, :photo)
end
