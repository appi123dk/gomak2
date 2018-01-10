class AddOrderToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :order, :integer, default: 999
  end
end
