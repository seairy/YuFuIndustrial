# encoding: utf-8
class PagePosterUploader < BaseUploader
  version :w1000_h300_ft_q90 do
    process quality: 90
    process resize_to_fit: [1000, 300]
  end
end