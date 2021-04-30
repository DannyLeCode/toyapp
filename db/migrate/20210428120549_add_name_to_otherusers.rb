class AddNameToOtherusers < ActiveRecord::Migration[5.1]
  def change
    add_column :otherusers, :username, :string
  end
end
