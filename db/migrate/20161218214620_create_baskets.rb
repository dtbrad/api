class CreateBaskets < ActiveRecord::Migration[5.0]
  def change
    create_table :baskets do |t|
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
