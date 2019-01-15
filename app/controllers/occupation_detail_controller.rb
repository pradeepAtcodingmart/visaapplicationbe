class OccupationDetailController < ApplicationController
	protect_from_forgery with: :null_session
  def create
  	 data = params[:data]
     uid = data[:applicantId]
     occupation_details = OccupationDetail.create(applicant_id:uid,present_occupation:data[:presentOccupation],employer_name:data[:employerName],designation:data[:designation],address:data[:address],past_occupation:data[:pastOccupation],organization:data[:organization],rank:data[:rank],place_of_posting:data[:placeOfPosting])
     render json: { id:occupation_details}, status: :ok
  end
end
