class PassportDetailsController < ApplicationController
   protect_from_forgery with: :null_session
  def create
  	binding.pry
  	 data = params[:data]
     uid = data[:applicantId]
     passport_details = PassportDetail.create(applicant_id:uid,passport_number:data[:passportNumber],place_of_issue:data[:placeOfIssue],date_of_issue:data[:dateOfIssue],date_of_expiry:data[:dateOfExpiry],country_of_issue:data[:countryOfIssue],country:data[:country])
     render json: { uid:uid}, status: :ok
  end
  def delete
  end

  def show
  end

  def update
  end
end
