class Produto < ApplicationRecord
    belongs_to :category
    has_one_attached :image_file

    def thumbnail
        image_file.variant(resize_to_limit: [300, 300]).processed
      end
    
      def small
        image_file.variant(resize_to_limit: [100, 100]).processed
      end
end
