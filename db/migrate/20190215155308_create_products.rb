class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :itemnmbr
      t.string :parent_sku
      t.string :relationship_type
      t.string :sku_parent_related
      t.string :item_sku_nuevo
      t.string :barcode
      t.integer :brand_id
      t.string :item_name
      t.integer :category_id
      t.integer :productline_id
      t.integer :subcategory_id
      t.text :product_description
      t.string :product_short_description
      t.string :model
      t.string :product_includes
      t.string :product_warranty
      t.float :product_weight
      t.float :product_width
      t.float :product_length
      t.float :product_height
      t.float :product_volume
      t.float :product_distribution_volume
      t.date :product_new_date_start
      t.date :product_new_date_ends
      t.integer :max_order_quantity
      t.integer :standard_price
      t.integer :list_price
      t.string :attributes_bullet_point1
      t.string :attributes_bullet_point2
      t.string :attributes_bullet_point3
      t.string :attributes_bullet_point4
      t.string :attributes_bullet_point5
      t.string :generic_keywords1
      t.string :generic_keywords2
      t.string :generic_keywords3
      t.string :generic_keywords4
      t.string :main_image_url
      t.string :left_image_url1
      t.string :right_image_url2
      t.string :back_image_url3
      t.string :use1_image_url4
      t.string :use2_image_url5
      t.string :use3_image_url5
      t.string :link_sku_related1
      t.string :link_sku_related2
      t.string :link_sku_related3
      t.string :link_sku_upsell1
      t.string :link_sku_upsell2
      t.string :link_sku_upsell3
      t.string :link_sku_crosssell1
      t.string :link_sku_crosssell2
      t.string :link_sku_crosssell3
      t.string :keywords

      t.timestamps
    end
  end
end
