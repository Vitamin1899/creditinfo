ActiveAdmin.register Credit do

  permit_params :email, :sum, :period, :status
  index do
    selectable_column
    column :email do |credit|
      credit.user.email
    end
    column :sum
    column :period
    column :created_at
    column :updated_at
    column :status
    actions
  end

  filter :email
  filter :sum
  filter :period
  filter :status

  form do |f|
    f.inputs "Admin Details" do
      f.input :sum
      f.input :period
      f.input :status, :label => "Status", :as => :select, :collection => ["pending", "approved"]
    end
    f.actions
  end

end
