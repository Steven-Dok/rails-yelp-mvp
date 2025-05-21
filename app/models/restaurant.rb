class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
# Quand un restaurant est supprimé, tous ses avis doivent aussi être supprimés.
# Un restaurant doit avoir un nom, une adresse et une catégorie.
# La catégorie du restaurant doit appartenir à cette liste fixe : ["chinese", "italian", "japanese", "french", "belgian"].
