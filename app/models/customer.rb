class Customer < ActiveRecord::Base
  attr_accessible :title, :firstname, :lastname, :email, :password, :address1, :address2, :address3, :admin

  validates_presence_of :firstname, :lastname, :email, :password, :address1, :address2, :address3
  validates_uniqueness_of :email

  # Combine first and lastname.
  def presentation_name
    self[:firstname].to_s + " " + self[:lastname].to_s
  end

  # Return Admin user.
  def self.administrator
    Customer.find(:first, :conditions => "admin = true")
  end


  def self.try_to_login(username, password)
    user = Customer.find(:first, :conditions => ["email=?", username])
    return false unless user
    # Check the passsword.
    if user.check_password(password)
      return user
    else
      false
    end
  end

  #Decrypt password
  def check_password(password)
    return Digest::SHA256.hexdigest(password.to_s) == self.password
  end

  #Encrypt password
  def password=(pass)
    self[:password] = Digest::SHA256.hexdigest(pass)
  end


end
