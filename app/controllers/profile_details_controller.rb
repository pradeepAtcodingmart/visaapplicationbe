class ProfileDetailsController < ApplicationController
	 protect_from_forgery with: :null_session
  def create
  	 data = params[:data]
     uid = data[:applicant_id]
     profile_details = ProfileDetail.create(applicant_id:uid,visa_applying_from:data[:visaApplyingFrom],indian_mission:data[:indianMission],nationality:data[:nationality],dob:data[:dob],email:data[:email],re_entered_email:data[:reEnteredEmail],date_of_arrival:data[:dateOfArrival],visa_type:data[:visaType],purpose:data[:purpose])
     render json: { id:profile_details}, status: :ok
  end

  def update
  end

  def delete
  end

 

  def show
  end

end

