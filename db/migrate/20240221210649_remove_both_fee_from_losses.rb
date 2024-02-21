class RemoveBothFeeFromLosses < ActiveRecord::Migration[7.0]
  def change
    remove_column :losses, :both_fee, :integer
  end
end
