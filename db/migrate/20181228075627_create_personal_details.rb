class CreatePersonalDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_details do |t|
      t.string :applicant_id
      t.string :name
      t.string :dob
      t.string :country_of_birth
      t.string :identification_mark
      t.string :education

      t.timestamps
    end
  end
end
