class Student <ApplicationRecord

  belongs_to :student_courses

  has_many :student_courses
  has_many :courses, through: :student_courses



  validates_presence_of :name, :age, :house



end
