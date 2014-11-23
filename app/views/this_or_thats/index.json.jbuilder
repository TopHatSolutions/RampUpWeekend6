json.array!(@this_or_thats) do |this_or_that|
  json.extract! this_or_that, :id, :image1, :image2, :description, :comment, :is_private, :user_id, :pants_brand, :shirt_brand, :shoes_brand, :hat_brand, :jacket_brand
  json.url this_or_that_url(this_or_that, format: :json)
end
