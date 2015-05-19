class BranchLogoUploader < BaseUploader
  version :w200_h200_ft_q90 do
    process quality: 90
    process resize_to_fit: [200, 200]
  end
end