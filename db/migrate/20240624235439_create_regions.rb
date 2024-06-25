class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end

  end
end
