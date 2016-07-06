class Employee < ActiveRecord::Base

  # Associations
  belongs_to :store

  # Validations
  validates_presence_of :first_name, :last_name
  # validates :first_name, :last_name, presence: true
  validates_inclusion_of :hourly_rate, :in => 40..200
  # validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200}
  validates_associated :store

end
