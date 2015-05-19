# -*- encoding : utf-8 -*-
module CarrierWave
  module MiniMagick
    def quality(percentage)
      manipulate! do |image|
        image.quality(percentage.to_s)
        image = yield(image) if block_given?
        image
      end
    end
  end
end

class BaseUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def method_missing name, *args, &block
    if name =~ /^w\d{1,4}_h\d{1,4}_(ft|fl)_q\d{2}$/
      self.url.blank? ? nil : "#{name}_#{File.basename(self.url)}"
    else
      super
    end
  end

  def store_dir
    'uploads'
  end

  def filename
     "#{secure_token}.#{file.path.scan(/\.(\w{3,4})/)[0][0]}" if original_filename.present?
  end

  protected
    def secure_token
      var = :"@#{mounted_as}_secure_token"
      model.instance_variable_get(var) or model.instance_variable_set(var, Digest::MD5.hexdigest(SecureRandom.uuid.to_s + Time.now.to_s + rand.to_s))
    end
end