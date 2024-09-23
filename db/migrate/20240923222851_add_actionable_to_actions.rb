class AddActionableToActions < ActiveRecord::Migration[7.1]
  def change
    add_column :actions, :actionable_id, :integer, null: false
  end
end
