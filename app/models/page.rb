class Page < ActiveRecord::Base
  mount_uploader :poster, PagePosterUploader
  
  class << self
    def home
      where(code: 'home').first
    end

    def about
      where(code: 'about').first
    end

    def contact
      where(code: 'contact').first
    end
  end
end
