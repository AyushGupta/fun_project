class CreateImageCategories < ActiveRecord::Migration
  def change
    create_table :image_categories do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
