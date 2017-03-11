ActiveAdmin.register Lesson do
  permit_params :name, :description, :presentation, :author, :course_id

  controller do
    nested_belongs_to :domain, :course, optional: false
  end

  menu false

  index do
    selectable_column
    id_column
    column :name
    column :created_at
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs "Lesson Details" do
      f.input :name
      f.input :description
      f.input :presentation
      f.input :author
      f.input :course_id
    end
    f.actions
  end

end