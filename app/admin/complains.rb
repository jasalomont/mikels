ActiveAdmin.register Complain do

 permit_params :user_id, :complaintype_id, :solved, :description, :department_id, :itemnmbr, :sopnumbe, :profile_id, :rating, :status, :title
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
