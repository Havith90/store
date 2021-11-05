class User < ApplicationRecord
  has_secure_password  

  belongs_to :role
  has_many :orders
  
  validates :username, presence: true, uniqueness: true
  validates :role_id, presence: true

  #en gemfile ->línea 23: quitar gato a gem 'bcrypt', '~> 3.1.7'  #gema q habilita security password
end
