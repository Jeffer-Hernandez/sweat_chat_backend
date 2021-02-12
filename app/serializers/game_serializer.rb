class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :studio, :category_id, :category
  # belongs_to :category
end
