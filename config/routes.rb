Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/api' => 'tests#savedata'
  post '/personal_details' => 'personal_details#save_personal_details'	
  get   '/personal_details' => 'personal_details#get_personal_details'


  # ProfileDetail

  post '/profile_detail' => 'profile_details#create'

  # ApplicantDetail

  post '/applicant_detail' => 'applicant_detail#create'

  # PassportDetails

  post '/passport_detail' => 'passport_details#create'

  # AddressDetails

  post '/address_detail'  => 'address_detail#create'

  # ParentDetails

  post '/parent_detail' => 'parent_detail#create'

  #OccupationDetail

   post '/occupation_detail' => 'occupation_detail#create'


  #VisaDetail

  post '/visa_detail' => 'visa_detail#create'


  # get all countries

  get '/all_countries' => 'country#show'	


  
end
