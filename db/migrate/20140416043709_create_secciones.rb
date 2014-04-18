class CreateSecciones < ActiveRecord::Migration
  def change
    create_table :secciones do |t|
      t.string :nombre
      t.integer :porciento_obtenido
      t.references :area, index: true

      t.timestamps
    end
  end
end
