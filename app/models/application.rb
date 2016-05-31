class Application < ActiveRecord::Base
  belongs_to :student
  belongs_to :sponsor
end
