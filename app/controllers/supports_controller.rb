class SupportsController < ApplicationController
  def new
    @support = Support.new(:id => 1)
  end

  def create
    @support = Support.new(params[:support])
    if @support.save
      redirect_to('/', :notice => "Support was successfully sent.")
    else
      flash[:alert] = "You must fill all fields."
      render 'new'
    end
  end
end
