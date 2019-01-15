class TestsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
  end

  def new
  end

  def savedata
  	# binding.pry
     data = params[:data]
     fname = data[:fname]
     lname = data[:lname]
  	 render json: { result: data}, status: :ok
  end

  def edit
  end
end
