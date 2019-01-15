class CreateOccupationDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :occupation_details do |t|
      t.string :applicant_id
      t.string :present_occupation
      t.string :employer_name
      t.string :designation
      t.string :address
      t.string :past_occupation
      t.string :organization
      t.string :rank
      t.string :place_of_posting

      t.timestamps
    end
  end
end
