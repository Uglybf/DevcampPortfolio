class Portfolio < ApplicationRecord

  validates_presece_of :title, :body, :main_image, :thumb_image
end
