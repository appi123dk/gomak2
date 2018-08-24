class AddClientToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :client, :string
  	add_column :projects, :media, :string
  	add_column :projects, :director, :string
  end
end
