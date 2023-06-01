class ApplyController < ApplicationController
  def index
    @applies = Apply.all
  end

  def new
    @applies = Apply.new
  end

  def show
    @applies = Apply.find(params[:id])
  end

  def create
    @applies = Apply.new
    @applies.save
    redirect_to apply_path
  end
end

private

def apply_params
  params.require(:id).permit(:name, :dob, :gender, :marriage, :occupation, :email, :phone, :country, :photo)
end
