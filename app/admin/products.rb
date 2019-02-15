ActiveAdmin.register Product do

 permit_params :itemnmbr, :parent_sku, :relationship_type, :sku_parent_related, :item_sku_nuevo, :barcode, :brand_id, :item_name, :category_id, :productline_id, :subcategory_id, :product_description, :product_short_description, :model, :product_includes, :product_warranty, :product_weight, :product_width, :product_length, :product_height, :product_volume, :product_distribution_volume, :product_new_date_start, :product_new_date_ends, :max_order_quantity, :standard_price, :list_price, :attributes_bullet_point1, :attributes_bullet_point2, :attributes_bullet_point3, :attributes_bullet_point4, :attributes_bullet_point5, :generic_keywords1, :generic_keywords2, :generic_keywords3, :generic_keywords4, :main_image_url, :left_image_url1, :right_image_url2, :back_image_url3, :use1_image_url4, :use2_image_url5, :use3_image_url5, :link_sku_related1, :link_sku_related2, :link_sku_related3, :link_sku_upsell1, :link_sku_upsell2, :link_sku_upsell3, :link_sku_crosssell1, :link_sku_crosssell2, :link_sku_crosssell3, :keywords
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
