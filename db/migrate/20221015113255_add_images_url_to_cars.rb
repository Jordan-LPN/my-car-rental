class AddImagesUrlToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :images_url, :string
  end
end
