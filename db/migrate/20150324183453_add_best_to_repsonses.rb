class AddBestToRepsonses < ActiveRecord::Migration
  def change
    add_column :responses, :best, :boolean, default: false
  end
end
