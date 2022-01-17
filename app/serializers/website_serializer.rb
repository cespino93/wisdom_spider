class WebsiteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :image_url, :category_id, :category
end
