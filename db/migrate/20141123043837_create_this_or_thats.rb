class CreateThisOrThats < ActiveRecord::Migration
  def change
    create_table :this_or_thats do |t|
      t.string :image1
      t.string :image2
      t.text :description
      t.string :comment
      t.boolean :is_private
      t.integer :user_id
      t.string :pants_brand
      t.string :shirt_brand
      t.string :shoes_brand
      t.string :hat_brand
      t.string :jacket_brand

      t.timestamps
    end
  end
end
