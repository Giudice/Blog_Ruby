class DropCommentaires < ActiveRecord::Migration
  def change
    drop_table :commentaires
  end
end
