class Student < ActiveRecord::Base

   def full_name
   "#{last_name} #{slast_name} #{names}"
   end

   mount_uploader :foto, ImageUploader
end
