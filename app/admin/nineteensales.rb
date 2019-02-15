ActiveAdmin.register Nineteensale do

 permit_params :custnmbr, :salsterr, :slprsnid, :gerente, :sopnumbe, :itemnmbr, :vta, :cantidad, :cost, :vta_ene, :cantidad_ene, :cost_ene, :vta_feb, :cantidad_feb, :cost_feb, :vta_mar, :cantidad_mar, :cost_mar, :vta_abr, :cantidad_abr, :cost_abr, :vta_may, :cantidad_may, :cost_may, :vta_jun, :cantidad_jun, :cost_jun, :vta_jul, :cantidad_jul, :cost_jul, :vta_ago, :cantidad_ago, :cost_ago, :vta_sep, :cantidad_sep, :cost_sep, :vta_oct, :cantidad_oct, :cost_oct, :vta_nov, :cantidad_nov, :cost_nov, :vta_dic, :cantidad_dic, :cost_dic, :dia
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
