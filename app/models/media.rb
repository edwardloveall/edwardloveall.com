class Media < ActiveRecord::Base
  belongs_to :projects
  belongs_to :pages
end
