class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :title
      t.string :category
      t.string :text

      t.timestamps
    end
  end
end
