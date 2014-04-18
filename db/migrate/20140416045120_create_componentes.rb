class CreateComponentes < ActiveRecord::Migration
  def change
    create_table :componentes do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :puntuaje_obtenido
      t.datetime :fecha_de_inicio
      t.datetime :fecha_de_continuidad
      t.boolean :duracion_selec
      t.integer :duracion_dias
      t.boolean :finalizada
      t.boolean :expiracion_selec
      t.integer :expiracion_dias
      t.boolean :expirada
      t.references :seccione, index: true

      t.timestamps
    end
  end
end
