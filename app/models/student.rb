class Student < ActiveRecord::Base
	validates :name, presence: true
	validates :bloodgroup, presence: true
	validates :department, presence: true

end
