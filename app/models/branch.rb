class Branch < ActiveRecord::Base
  include Multilingual
  mount_uploader :logo, BranchLogoUploader
  mount_uploader :poster, BranchPosterUploader
  multilingual :name, :short_name, :description, :short_description
end
