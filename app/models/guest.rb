class Guest < ActiveRecord::Base
  ATTENDANCE_OPTIONS = %w(weekend wedding evening)
  DIET_OPTIONS = %w(non-vegetarian vegetarian vegan nut_allergy gluten-free)

  validates :attendance,
            inclusion: { in: ATTENDANCE_OPTIONS, allow_blank: true }
  validates :diet, inclusion: { in: DIET_OPTIONS, allow_blank: true }
  validates :invite, :name, presence: true

  belongs_to :invite
end
