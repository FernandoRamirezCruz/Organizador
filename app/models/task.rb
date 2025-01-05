# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  due_date    :date
#  category_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

class Task < ApplicationRecord

  belongs_to :category #El modelo Task ahce referencia hace a una catergoria 
  belongs_to :owner, class_name: "User"
  
  has_many :participating_users, class_name: "Participant"
  has_many :participants, through: :participating_users, source: :user

 # validates :participating_users, presence: true

  validates :name, :description, presence: true
  validates :name, uniqueness: {case_sensitive: false}
  validate :due_date_valid
  
  before_create :create_code

  accepts_nested_attributes_for :participating_users, allow_destroy: true

  def due_date_valid
    return if due_date.blank?
    return if due_date > Date.today
    error.add :due_date, I18n.t('errors.messages.invalid_due_date')
  end
  def create_code
    self.code = "#{owner_id}-#{Time.now.to_i.to_s(36)}#{SecureRandom.hex(8)}"
  end
end
