class CreateAddressDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :address_details do |t|
      t.string :applicant_id
      t.string :street
      t.string :village
      t.string :state
      t.string :country
      t.string :pincode
      t.string :mobileno

      t.timestamps
    end
  end
end
