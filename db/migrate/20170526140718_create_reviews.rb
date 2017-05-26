class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.decimal :rating
      t.string :text
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
