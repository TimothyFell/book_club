class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.string :review_text
      t.integer :book_id
      t.integer :user_id
      t.timestamps
    end
  end
end
