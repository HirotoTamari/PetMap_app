class User < ApplicationRecord
    has_secure_password
    
    #0文字になればヴァリデーション
    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}
end
