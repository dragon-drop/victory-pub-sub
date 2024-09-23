class RemoveProjectIdFromActions < ActiveRecord::Migration[7.1]
  def change
    remove_column :actions, :project_id, :string
  end
end
