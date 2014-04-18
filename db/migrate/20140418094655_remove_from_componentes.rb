class RemoveFromComponentes < ActiveRecord::Migration
  def change
  	remove_column :componentes, :puntuaje_obtenido, :integer 
  	remove_column :componentes, :fecha_de_inicio, :datetime
  	remove_column :componentes, :fecha_de_continuidad, :datetime
  	remove_column :componentes, :duracion_selec, :boolean
  	remove_column :componentes, :duracion_dias, :integer
  	remove_column :componentes, :finalizada, :boolean
  	remove_column :componentes, :expiracion_selec, :boolean
  	remove_column :componentes, :expiracion_dias, :integer
  	remove_column :componentes, :expirada, :boolean
  end
end
