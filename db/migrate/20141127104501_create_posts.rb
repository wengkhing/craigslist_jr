class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string :title, :description, :price, :email
      t.timestamp
    end
  end
end
