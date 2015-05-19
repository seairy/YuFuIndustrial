class Branch < ActiveRecord::Base
  mount_uploader :logo, BranchLogoUploader
  mount_uploader :poster, BranchPosterUploader
end
