class User < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50}
  validates :email,uniqueness:true, presence: true, length: {maximum: 255}
  validates :username,uniqueness:true, presence: true, length: {maximum: 20}
  validates_format_of :username, :with => /\A[a-z0-9\-_]+\z/i
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :password , presence:true,length: {minimum: 6}
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_secure_password
  def before_save
    self.email.downcase!
  end
end
