class Student < ActiveRecord::Base
  mount_uploader :foto, ImageUploader
  
   def full_name
   "#{last_name} #{slast_name} #{names}"
   end
end
