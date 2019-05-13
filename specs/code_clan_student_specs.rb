require("minitest/autorun")
require("minitest/rg")
require_relative("../code_clan_student")

class TestStudent < MiniTest::Test


  def test_student_name
    student = Student.new("Marcin", "G13")
    assert_equal("Marcin", student.get_name())
  end

  def test_student_cohort
    student = Student.new("Marcin", "G13")
    assert_equal("G13", student.get_cohort())
  end

  def test_student_update_name
    student = Student.new("Marcin", "G13")
    student.update_name("Mark")
    assert_equal("Mark", student.get_name())
  end

  def test_student_update_cohort
    student = Student.new("Marcin", "G13")
    student.update_cohort("E23")
    assert_equal("E23", student.get_cohort())
  end

  def test_student_talks
    student = Student.new("Marcin", "G13")
    assert_equal("I can talk", student.talk())
  end

  def test_get_favourite_language
    student = Student.new("Marcin", "G13")
    assert_equal("I love Ruby !!!", student.say_favourite_language("Ruby"))
  end


end
