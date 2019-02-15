ActiveAdmin.register Profile do

 permit_params :user_id, :name, :last_name, :nick_name, :phone, :mobile, :profile_pic, :rank_id, :city_base, :address, :active, :slprsnid, :salsterr_id, :start, :full_name
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
