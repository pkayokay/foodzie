class AddDefaultpicturesToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :defaultpicture, :string
    add_index :places, :defaultpicture
  end
end
