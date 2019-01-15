class CreateProfileDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_details do |t|
      t.string :applicant_id
      t.string :visa_applying_from
      t.string :indian_mission
      t.string :nationality
      t.string :dob
      t.string :email
      t.string :re_entered_email
      t.string :date_of_arrival
      t.string :visa_type
      t.string :purpose
      t.timestamps
    end
  end
end
