class AddImageToYokohamas < ActiveRecord::Migration[6.1]
  def change
    add_column :yokohamas, :image, :string
  end
end
