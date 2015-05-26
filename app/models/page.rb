class Page < ActiveRecord::Base
  include Multilingual
  mount_uploader :poster, PagePosterUploader
  multilingual :content
  
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
