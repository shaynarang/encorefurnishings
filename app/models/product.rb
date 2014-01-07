class Product < ActiveRecord::Base

  monetize :price_cents, :allow_nil => true

  mount_uploader :image, ImageUploader

  before_save :destroy_image?
  
  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

  private
    def destroy_image?
      self.remove_image! if @image_delete == "1"
    end
  
end
