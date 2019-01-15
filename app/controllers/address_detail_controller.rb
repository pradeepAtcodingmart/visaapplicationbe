class AddressDetailController < ApplicationController
 protect_from_forgery with: :null_session
  def create
  	 data = params[:data]
     uid = data[:applicantId]
     applicant_details = AddressDetail.create(applicant_id:uid,street:data[:street],village:data[:village],state:data[:state],country:data[:country],pincode:data[:pincode],mobileno:data[:mobileno])
     render json: { id:uid}, status: :ok
  end
  def delete
  end

  def show
  end

  def update
  end
end
