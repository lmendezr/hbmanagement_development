class ChangeStuffToSecciones < ActiveRecord::Migration
  def up
  	rename_column :secciones, :porciento_obtenido, :porcentaje_componente
  	add_column :secciones, :valor_obtenido, :integer
  end
  def down
  	rename_column :secciones, :porcentaje_componente, :porciento_obtenido
  	remove_column :secciones, :valor_obtenido, :integer
  end
end
