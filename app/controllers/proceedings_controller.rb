class ProceedingsController < ApplicationController
  def index
    @proceedings = Proceeding.all
  end
end
