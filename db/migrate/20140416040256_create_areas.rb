class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :nombre, limit: 45
      t.references :proyecto, index: true

      t.timestamps
    end
  end
end
