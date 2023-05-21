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
    @applies = Apply.new(apply_params)
    @applies.save
    redirect_to applies_path[apply]
  end
end

private

def apply_params
  params.require(:apply).permit(:name, :dob, :gender, :marriage, :occupation, :email, :phone, :country, :photo)
end
