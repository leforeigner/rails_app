class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.string :name, null: false # 必須
      t.text :comment, null: false # 必須

      t.timestamps
    end
  end
end
