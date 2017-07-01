ActiveAdmin.register OfflinePayment do
  filter :plan_id, :label =>'Plan', :as => :select, if: proc{Plan.all.map{|p| [p.plan_name,p.id]}}
  filter :customer_id, :label => 'Customer', :as => :select, if: proc{Customer.all.map{|c| [c.fullname,c.id]}}
  # See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

permit_params :cash, :check, :plan_id, :fullname,:customer_id,:bank_name,:check_number,:amount_paid
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
    f.inputs "Offline Details" do

      f.input :plan_id, :as => :select, if: proc{Plan.all.map{|p| [p.plan_name,p.id]}}
      f.input :customer_id,  :as => :select, if: proc{Customer.all.map{|c| [c.fullname,c.id]}}
      f.input :cash
      f.input :check
      f.input :bank_name
      f.input :check_number
      f.input :amount_paid

end
  f.actions
end

action_item :show do
   link_to 'OfflinePaymentHistory', new_admin_offline_payment_history_path
end



end
