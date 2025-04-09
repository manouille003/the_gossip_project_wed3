class CreateGossips < ActiveRecord::Migration[8.0]
  def change
    create_table :gossips do |t|
      t.string :title
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
