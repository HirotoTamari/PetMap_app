class User < ApplicationRecord

    #0文字になればヴァリデーション
    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}
end
