class ApplicantDetailController < ApplicationController
	 protect_from_forgery with: :null_session
  def create
  	# binding.pry
  	 data = params[:data]
     uid = data[:applicantId]
     applicant_details = ApplicantDetail.create(applicant_id:uid,name:data[:name],gender:data[:gender],birth_city:data[:birthCity],birth_country:data[:birthCountry],religion:data[:religion],identification_mark:data[:identificationMark],education:data[:education])
     render json: { id:uid}, status: :ok
  end
end
