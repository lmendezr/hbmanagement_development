class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre, limit: 45
      t.string :nombre_gerente, limit: 45

      t.timestamps
    end
  end
end
