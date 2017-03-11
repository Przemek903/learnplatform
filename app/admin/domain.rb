ActiveAdmin.register Domain do
  permit_params :name

  controller do
    def scoped_collection
      super.includes :courses
    end
  end

  index do
    id_column
    column :name
    column "Courses" do |domain|
      link_to "Courses (#{domain.courses.count})", admin_domain_courses_path(domain)
    end
    column :created_at
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs "Course Details" do
      f.input :name
    end
    f.actions
  end

end