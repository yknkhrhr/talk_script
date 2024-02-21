class CreateLosses < ActiveRecord::Migration[7.0]
  def change
    create_table :losses do |t|
      t.integer :card_code
      t.string :card_name
      t.text :send_script
      t.text :fee_script
      t.integer :card_fee
      t.integer :etc_fee
      t.text :public_script
      t.text :specific_script
      t.text :etc_script
      t.text :cancell_card_script
      t.text :cancell_specific_script
      t.text :cancell_etc_script
      t.timestamps
    end
  end
end
