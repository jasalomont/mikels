class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(10)

    render("product_templates/index.html.erb")
  end

  def show
    @product = Product.find(params.fetch("id_to_display"))

    render("product_templates/show.html.erb")
  end

  def new_form
    @product = Product.new

    render("product_templates/new_form.html.erb")
  end

  def create_row
    @product = Product.new

    @product.itemnmbr = params.fetch("itemnmbr")
    @product.parent_sku = params.fetch("parent_sku")
    @product.relationship_type = params.fetch("relationship_type")
    @product.sku_parent_related = params.fetch("sku_parent_related")
    @product.item_sku_nuevo = params.fetch("item_sku_nuevo")
    @product.barcode = params.fetch("barcode")
    @product.brand_id = params.fetch("brand_id")
    @product.item_name = params.fetch("item_name")
    @product.category_id = params.fetch("category_id")
    @product.productline_id = params.fetch("productline_id")
    @product.subcategory_id = params.fetch("subcategory_id")
    @product.product_description = params.fetch("product_description")
    @product.product_short_description = params.fetch("product_short_description")
    @product.model = params.fetch("model")
    @product.product_includes = params.fetch("product_includes")
    @product.product_warranty = params.fetch("product_warranty")
    @product.product_weight = params.fetch("product_weight")
    @product.product_width = params.fetch("product_width")
    @product.product_length = params.fetch("product_length")
    @product.product_height = params.fetch("product_height")
    @product.product_volume = params.fetch("product_volume")
    @product.product_distribution_volume = params.fetch("product_distribution_volume")
    @product.product_new_date_start = params.fetch("product_new_date_start")
    @product.product_new_date_ends = params.fetch("product_new_date_ends")
    @product.max_order_quantity = params.fetch("max_order_quantity")
    @product.standard_price = params.fetch("standard_price")
    @product.list_price = params.fetch("list_price")
    @product.attributes_bullet_point1 = params.fetch("attributes_bullet_point1")
    @product.attributes_bullet_point2 = params.fetch("attributes_bullet_point2")
    @product.attributes_bullet_point3 = params.fetch("attributes_bullet_point3")
    @product.attributes_bullet_point4 = params.fetch("attributes_bullet_point4")
    @product.attributes_bullet_point5 = params.fetch("attributes_bullet_point5")
    @product.generic_keywords1 = params.fetch("generic_keywords1")
    @product.generic_keywords2 = params.fetch("generic_keywords2")
    @product.generic_keywords3 = params.fetch("generic_keywords3")
    @product.generic_keywords4 = params.fetch("generic_keywords4")
    @product.main_image_url = params.fetch("main_image_url")
    @product.left_image_url1 = params.fetch("left_image_url1")
    @product.right_image_url2 = params.fetch("right_image_url2")
    @product.back_image_url3 = params.fetch("back_image_url3")
    @product.use1_image_url4 = params.fetch("use1_image_url4")
    @product.use2_image_url5 = params.fetch("use2_image_url5")
    @product.use3_image_url5 = params.fetch("use3_image_url5")
    @product.link_sku_related1 = params.fetch("link_sku_related1")
    @product.link_sku_related2 = params.fetch("link_sku_related2")
    @product.link_sku_related3 = params.fetch("link_sku_related3")
    @product.link_sku_upsell1 = params.fetch("link_sku_upsell1")
    @product.link_sku_upsell2 = params.fetch("link_sku_upsell2")
    @product.link_sku_upsell3 = params.fetch("link_sku_upsell3")
    @product.link_sku_crosssell1 = params.fetch("link_sku_crosssell1")
    @product.link_sku_crosssell2 = params.fetch("link_sku_crosssell2")
    @product.link_sku_crosssell3 = params.fetch("link_sku_crosssell3")
    @product.keywords = params.fetch("keywords")

    if @product.valid?
      @product.save

      redirect_back(:fallback_location => "/products", :notice => "Product created successfully.")
    else
      render("product_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @product = Product.find(params.fetch("prefill_with_id"))

    render("product_templates/edit_form.html.erb")
  end

  def update_row
    @product = Product.find(params.fetch("id_to_modify"))

    @product.itemnmbr = params.fetch("itemnmbr")
    @product.parent_sku = params.fetch("parent_sku")
    @product.relationship_type = params.fetch("relationship_type")
    @product.sku_parent_related = params.fetch("sku_parent_related")
    @product.item_sku_nuevo = params.fetch("item_sku_nuevo")
    @product.barcode = params.fetch("barcode")
    @product.brand_id = params.fetch("brand_id")
    @product.item_name = params.fetch("item_name")
    @product.category_id = params.fetch("category_id")
    @product.productline_id = params.fetch("productline_id")
    @product.subcategory_id = params.fetch("subcategory_id")
    @product.product_description = params.fetch("product_description")
    @product.product_short_description = params.fetch("product_short_description")
    @product.model = params.fetch("model")
    @product.product_includes = params.fetch("product_includes")
    @product.product_warranty = params.fetch("product_warranty")
    @product.product_weight = params.fetch("product_weight")
    @product.product_width = params.fetch("product_width")
    @product.product_length = params.fetch("product_length")
    @product.product_height = params.fetch("product_height")
    @product.product_volume = params.fetch("product_volume")
    @product.product_distribution_volume = params.fetch("product_distribution_volume")
    @product.product_new_date_start = params.fetch("product_new_date_start")
    @product.product_new_date_ends = params.fetch("product_new_date_ends")
    @product.max_order_quantity = params.fetch("max_order_quantity")
    @product.standard_price = params.fetch("standard_price")
    @product.list_price = params.fetch("list_price")
    @product.attributes_bullet_point1 = params.fetch("attributes_bullet_point1")
    @product.attributes_bullet_point2 = params.fetch("attributes_bullet_point2")
    @product.attributes_bullet_point3 = params.fetch("attributes_bullet_point3")
    @product.attributes_bullet_point4 = params.fetch("attributes_bullet_point4")
    @product.attributes_bullet_point5 = params.fetch("attributes_bullet_point5")
    @product.generic_keywords1 = params.fetch("generic_keywords1")
    @product.generic_keywords2 = params.fetch("generic_keywords2")
    @product.generic_keywords3 = params.fetch("generic_keywords3")
    @product.generic_keywords4 = params.fetch("generic_keywords4")
    @product.main_image_url = params.fetch("main_image_url")
    @product.left_image_url1 = params.fetch("left_image_url1")
    @product.right_image_url2 = params.fetch("right_image_url2")
    @product.back_image_url3 = params.fetch("back_image_url3")
    @product.use1_image_url4 = params.fetch("use1_image_url4")
    @product.use2_image_url5 = params.fetch("use2_image_url5")
    @product.use3_image_url5 = params.fetch("use3_image_url5")
    @product.link_sku_related1 = params.fetch("link_sku_related1")
    @product.link_sku_related2 = params.fetch("link_sku_related2")
    @product.link_sku_related3 = params.fetch("link_sku_related3")
    @product.link_sku_upsell1 = params.fetch("link_sku_upsell1")
    @product.link_sku_upsell2 = params.fetch("link_sku_upsell2")
    @product.link_sku_upsell3 = params.fetch("link_sku_upsell3")
    @product.link_sku_crosssell1 = params.fetch("link_sku_crosssell1")
    @product.link_sku_crosssell2 = params.fetch("link_sku_crosssell2")
    @product.link_sku_crosssell3 = params.fetch("link_sku_crosssell3")
    @product.keywords = params.fetch("keywords")

    if @product.valid?
      @product.save

      redirect_to("/products/#{@product.id}", :notice => "Product updated successfully.")
    else
      render("product_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @product = Product.find(params.fetch("id_to_remove"))

    @product.destroy

    redirect_to("/products", :notice => "Product deleted successfully.")
  end
end
