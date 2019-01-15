class CountryController < ApplicationController
  def create
  end

  def delete
  end

  def show
  	data = Country.all
  	   render json: { data:data}, status: :ok

  end

  def update
  end
end
