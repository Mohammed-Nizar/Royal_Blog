class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.integer :primary_key
      t.string :name
      t.integer :rent

      t.timestamps
    end
  end
end
