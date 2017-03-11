ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :surname

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :surname
    column :current_sign_in_at
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :name
      f.input :surname
      f.input :city
      f.input :street
      f.input :street_number
      f.input :home_number
      f.input :birth_date
      f.input :education
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
