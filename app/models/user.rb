require 'digest/sha2'

class User < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :name, length: {in: 5..15}
  validates :password, :confirmation => true

  validate :password_must_be
  validate :password_lenght

  attr_reader :password
  attr_accessor :password_confirmation

  #relacja
  has_many :issue

  def admin?
    self.admin == true
  end


  def password=(password)
    @password=password
    puts 'punkt 1' #sprawdzanie - przy wykonywaniu wyzuca na ekran
    if @password.present?
      # tu bedzie kodowanie
      # puts ' punkt 2'
      self.hash_password = User.encrypt_password(@password)
    end
  end

def User.encrypt_password(password)
  Digest::SHA2.hexdigest password
end

def User.authenticate(name,password)
  if u = User.find_by_name(name)
    if u.hash_password == User.encrypt_password(password)
      u
    end
  end
end

private

  def password_lenght
    if @password.present?
      errors.add(:password, 'is to short') if @password.size < 5
    end
  end

  def password_must_be
      #self.hash_password.empty ?
      errors.add(:password, 'Can by empty') unless self.hash_password.present?
  end

end
