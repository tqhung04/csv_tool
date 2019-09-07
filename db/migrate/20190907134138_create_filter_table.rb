class CreateFilterTable < ActiveRecord::Migration[6.0]
  def change
    create_table :filters do |t|
      t.integer :filter_kind, null: false
    end
  end
end
