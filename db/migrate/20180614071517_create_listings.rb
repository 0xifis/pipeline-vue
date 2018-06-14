class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :postcode
      t.string :tenant

      t.timestamps
    end
  end
end
