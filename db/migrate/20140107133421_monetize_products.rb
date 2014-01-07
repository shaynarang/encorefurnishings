class MonetizeProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.money :price
    end
  end
end