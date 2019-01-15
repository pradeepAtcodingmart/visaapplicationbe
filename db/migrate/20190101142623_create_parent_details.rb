class CreateParentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_details do |t|
    	t.string :applicant_id
    	t.string :father_name
    	t.string :father_nationality
    	t.string :father_prev_nationality
    	t.string :father_place_of_birth
    	t.string :father_country_of_birth
    	t.string :mother_name
    	t.string :mother_nationality
    	t.string :mother_prev_nationality
    	t.string :mother_place_of_birth
    	t.string :mother_country_of_birth

      t.timestamps	
    end
  end
end
