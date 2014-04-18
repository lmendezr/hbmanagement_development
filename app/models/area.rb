class Area < ActiveRecord::Base
  belongs_to :proyecto
  has_many :secciones, dependent: :destroy

  	def to_label
    	"#{nombre}"
  	end
end
