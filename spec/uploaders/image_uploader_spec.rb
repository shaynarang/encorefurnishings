require 'spec_helper'
require 'carrierwave/test/matchers'

describe ImageUploader do
  include CarrierWave::Test::Matchers

  before do
    ImageUploader.enable_processing = true
    @product = Fabricator(:product)
    @uploader = ImageUploader.new(@product, :image)
    @uploader.store!(File.open("#{Rails.root}/features/support/files/table.png"))
  end

  after do
    ImageUploader.enable_processing = false
    @uploader.remove!
  end

  context 'thumb' do
    it "should resize to a limit of 200 by 200 pixels" do
      @uploader.thumb.should be_no_larger_than(200, 200)
    end
  end

end