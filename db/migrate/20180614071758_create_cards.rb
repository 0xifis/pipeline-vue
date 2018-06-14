class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :position
      t.references :list
      t.references :listing

      t.timestamps
    end
  end
end
