class AddYearHomeBuiltToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :year_home_built, :integer
  end
end
