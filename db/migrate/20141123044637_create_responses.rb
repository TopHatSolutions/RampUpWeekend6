class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :this_or_that_id
      t.boolean :this
      t.boolean :that

      t.timestamps
    end
  end
end
