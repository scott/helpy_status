class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :service
      t.text :description
      t.string :status
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
