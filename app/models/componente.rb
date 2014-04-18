class Componente < ActiveRecord::Base
  belongs_to :seccione
  has_many :tareas, dependent: :destroy

  	def to_label
    	"#{nombre}"
  	end
end
