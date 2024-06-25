class Produto < ApplicationRecord
    belongs_to :category
    has_one_attached :image_file
end
