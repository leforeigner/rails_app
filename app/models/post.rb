class Post < ApplicationRecord
    # Commentモデルを複数持てる様にする
    has_many :comments, dependent: :destroy
    has_many :post_tag_relations, dependent: :delete_all
    has_many :tags, through: :post_tag_relations

    validates :name, presence: true
    validates :title, presence: true
    validates :content, presence: true
end