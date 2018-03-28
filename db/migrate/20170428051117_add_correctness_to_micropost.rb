class AddCorrectnessToMicropost < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :correctnesss, :text
  end
end
