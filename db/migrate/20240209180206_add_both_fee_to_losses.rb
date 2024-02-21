class AddBothFeeToLosses < ActiveRecord::Migration[7.0]
  def change
    add_column :losses, :both_fee, :integer
  end
end
