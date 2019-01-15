class PersonalDetailsController < ApplicationController
 protect_from_forgery with: :null_session
def save_personal_details 

  data = params[:data]
  uid = data[:applicantId]
  personal_details = PersonalDetail.create(applicant_id:uid,name:data[:name],dob:data[:dob],country_of_birth:data[:countryofbirth],identification_mark:data[:identification_mark],education:data[:education])
   render json: { id:uid}, status: :ok
end
def get_personal_details 
 render json: { mesg:"success"}, status: :ok
end


end

