class VisaDetailController < ApplicationController
		 protect_from_forgery with: :null_session
  def create
  	 data = params[:data]
     uid = data[:applicantId]
     visa_details = VisaDetail.create(applicant_id:uid,place_to_be_visited:data[:placeToBeVisited],visa_duration_in_month:data[:visaDurationInMonth],no_of_entries:data[:noOfEntries],date_of_journey:data[:dateOfJourney],port_of_arrival_india:data[:portOfArrivalIndia],port_of_exited_india:data[:portOfExitedIndia],last_visited_country:data[:lastVisitedCountry])
     render json: { id:visa_details}, status: :ok
  end

end
