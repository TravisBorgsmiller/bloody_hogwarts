require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit /students", type: :feature do
    before :each do

      @student_1 = Student.create!(:name "Casseaus Black",
                                   :age 14,
                                   :house "Slytherin")

      visit "/students"
      end

      it 'I see a list of students with name, age, and house displayed' do


      expect(page).to have_content(@student_1.name)
      expect(page).to have_content(@student_1.age)
      expect(page).to have_content(@student_1.house)
    end
  end
end
