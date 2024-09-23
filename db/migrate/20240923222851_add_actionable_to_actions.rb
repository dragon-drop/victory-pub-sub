class AddActionableToActions < ActiveRecord::Migration[7.1]
  def change
    add_column :actions, :actionable_id, :integer, null: false
    add_column :actions, :actionable_type, :string, null: false
  end
end
