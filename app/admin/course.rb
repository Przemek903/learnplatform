ActiveAdmin.register Course do
  permit_params :name, :description, :estimated_time, :domain_id, :level, :image

  controller do
    nested_belongs_to :domain, optional: false
  end
  menu false

  controller do
    def scoped_collection
      super.includes :lessons
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column "Lessons" do |course|
      link_to "Lessons (#{course.lessons.count})", admin_domain_course_lessons_path(course.domain, course)
    end
    column :created_at
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs "Course Details" do
      f.input :name
      f.input :description
      f.input :estimated_time
      f.input :domain_id
      f.input :level
      f.input :image
    end
    f.actions
  end

end