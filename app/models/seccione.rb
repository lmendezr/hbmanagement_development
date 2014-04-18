class Seccione < ActiveRecord::Base
  belongs_to :area
  has_many :componentes, dependent: :destroy

  	def to_label
    	"#{nombre}"
  	end
end
