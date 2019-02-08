class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.text :name
      t.text :street
      t.text :city
      t.text :state
      t.text :zip
      t.text :phone

      t.timestamps
    end
  end
end
