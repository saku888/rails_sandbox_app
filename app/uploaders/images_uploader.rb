class ImagesUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def dynamic_resize_to_fill
    resize_to_fill model.width, model.height
  end

  process :dynamic_resize_to_fill
end
