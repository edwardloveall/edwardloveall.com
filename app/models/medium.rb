class Medium < ActiveRecord::Base
  belongs_to :project
  belongs_to :page
  
  TYPES = ['video', 'audio', 'picture']
end
