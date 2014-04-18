class Proyecto < ActiveRecord::Base
	has_many :areas, dependent: :destroy

	def to_label
    	"#{nombre}"
  	end
end
