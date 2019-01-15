class CreateApplicantDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :applicant_details do |t|
      t.string :applicant_id
      t.string :name
      t.string :gender
      t.string :birth_city
      t.string :birth_country
      t.string :religion
      t.string :identification_mark
      t.string :education

      t.timestamps
    end
  end
end
