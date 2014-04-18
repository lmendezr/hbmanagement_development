class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.datetime :fecha_de_inicio
      t.datetime :fecha_de_continuidad
      t.boolean :duracion_selec
      t.integer :duracion_dias
      t.boolean :finalizada
      t.boolean :expiracion_selec
      t.integer :expiracion_dias
      t.boolean :expirada
      t.references :componente, index: true

      t.timestamps
    end
  end
end
