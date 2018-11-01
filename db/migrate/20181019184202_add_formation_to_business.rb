class AddFormationToBusiness < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :formation, :string
  end
end
