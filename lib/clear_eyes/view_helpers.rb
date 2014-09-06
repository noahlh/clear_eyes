module ClearEyes
  module ViewHelpers
    def self.included(base)
      base.send(:attr_accessor, :image, :options)
    end

    def r_image_t( pixel_ratio )
      insert_on = -File.extname(self.image).size-1
      image_tag(self.image.insert(insert_on, "@#{pixel_ratio}x"), self.options)
    end
    
    def r_image_p( pixel_ratio )
      insert_on = -File.extname(self.image).size-1
      image_path(self.image.insert(insert_on, "@#{pixel_ratio}x"), self.options)
    end

    def r_image_tag(image, options = {})
      self.options      = options
      self.image        = image
      case cookies[:devicePixelRatio]
        when '2'
          r_image_t 2
        when '1.5'
          r_image_t 2
        else
          image_tag(self.image, self.options)
      end
    end
    
    def r_image_path(image, options = {})
      self.options      = options
      self.image        = image
      case cookies[:devicePixelRatio]
        when '2'
          r_image_p 2
        when '1.5'
          r_image_p 2
        else
          image_path(self.image, self.options)
      end
    end
  end
end
