class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :message 
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, length: { minimum: 5 }
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :message, presence: true, length: { minimum: 5 }

  def self.attr_accessor(*vars)
    @attributes ||= []
    @attributes.concat( vars )
    super
  end

 def self.attributes
   @attributes
 end

 def initialize(attributes={})
   attributes && attributes.each do |name, value|
     send("#{name}=", value) if respond_to? name.to_sym 
   end
 end

  def persisted?
    false
  end

  def self.inspect
    "#<#{ self.to_s} #{ self.attributes.collect{ |e| ":#{ e }" }.join(', ') }>"
  end
end