class PassportDetailsController < ApplicationController
   protect_from_forgery with: :null_session
  def create
  	 data = params[:data]
     uid = data[:applicantId]
     passport_details = PassportDetail.create(applicant_id:uid,passport_number:data[:passportNumber],place_of_issue:data[:placeOfIssue],date_of_issue:data[:dateOfIssue],country_of_issue:data[:countryOfIssue],country:data[:country])
     render json: { uid:uid}, status: :ok
  end
  def delete
  end

  def show
  end

  def update
  end
end
