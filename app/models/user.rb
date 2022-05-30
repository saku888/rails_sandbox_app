class User < ApplicationRecord
  mount_uploader :image, ImagesUploader

  attr_accessor :width, :height
end
