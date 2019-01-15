class ParentDetailController < ApplicationController
	protect_from_forgery with: :null_session
  def create
  	 data = params[:data]
     uid = data[:applicantId]
     parent_details = ParentDetail.create(applicant_id:uid,father_name:data[:fatherName],father_nationality:data[:fatherNationality],father_prev_nationality:data[:fatherPreviousNationality],father_place_of_birth:data[:fatherPlaceOfBirth],father_country_of_birth:data[:fatherBirthCountry],applicant_id:uid,mother_name:data[:motherName],mother_nationality:data[:motherNationality],mother_prev_nationality:data[:motherPreviousNationality],mother_place_of_birth:data[:motherPlaceOfBirth],mother_country_of_birth:data[:motherBirthCountry])
     render json: { id:parent_details}, status: :ok
  end 
  def delete
  end

  def show
  end

  def update
  end
end
