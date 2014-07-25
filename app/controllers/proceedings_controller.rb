class ProceedingsController < ApplicationController
  def index
    @proceedings = Proceeding.all
  end

  def new
    @proceeding = Proceeding.new
  end

  def create
    @proceeding = Proceeding.new(proceeding_params)

    if @proceeding.save
      redirect_to proceedings_url
    else
      render 'new'
    end
  end

  def show
    @proceeding = Proceeding.find(params[:id])
  end

  private
  def proceeding_params
    params.require(:proceeding).permit(:title, :date , :sender_id, :content)
  end
end
