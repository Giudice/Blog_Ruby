class Commentaire < ActiveRecord::Base
  validates :contenu, presence: true
  validates :post_id, presence: true
  validates :date, presence: true
  validates :auteur, presence: true

  belongs_to :post
end
