class Post < ApplicationRecord
    #0文字、140も以上でヴァリデーション
    validates :content, {presence: true, length: {maximum: 140}}
end
