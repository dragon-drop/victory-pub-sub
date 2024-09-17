class CreateActions < ActiveRecord::Migration[7.1]
  def change
    create_table :actions do |t|
      t.string :klass
      t.string :action

      t.timestamps
    end
  end
end
