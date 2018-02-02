class CreateCommentaires < ActiveRecord::Migration
  def change
    create_table :commentaires do |t|
      t.text :contenu
      t.date :date
      t.integer :post_id
      t.string :auteur

      t.timestamps
    end
  end
end
