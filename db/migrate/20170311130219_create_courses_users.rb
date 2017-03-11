class CreateCoursesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
      t.boolean :passed, default: false
      t.integer :result
      t.boolean :is_certificate, default: false
      t.datetime :passed_date
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
