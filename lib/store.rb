class Store < ActiveRecord::Base

  #Associations
  has_many :employees

  #Validations
  validates_length_of :name, :minimum=>3
  # validates :name, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, :greater_than=> 0
  # validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}
  validate :must_have_one_of_the_apparels

  def must_have_one_of_the_apparels
    if (self.mens_apparel == false) && (self.womens_apparel == false)
      errors.add(:mens_apparel, "must have one of the apparels")
      errors.add(:womens_apparel, "must have one of the apparels")
    end
  end

end
