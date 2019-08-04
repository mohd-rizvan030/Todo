class Task < ActiveRecord::Base
	
	STATUS = %w{ in_progress done new }

	belongs_to :project
	belongs_to :user
end
