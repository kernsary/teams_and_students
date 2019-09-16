require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Charles", "E34")
    assert_equal("Charles", student.get_name())
  end

  def test_get_cohort
    student = Student.new("Charles", "E34")
    assert_equal("E34", student.get_cohort())
  end

  def test_set_name
    student = Student.new("Charles", "E34")
    student.set_name("Alan")
    assert_equal("Alan", student.get_name())
  end

  def test_set_cohort
    student = Student.new("Charles", "E34")
    student.set_cohort("G18")
    assert_equal("G18", student.get_cohort())
  end

  def test_talk
    student = Student.new("Charles", "E34")
    assert_equal("I can talk!", student.talk())
  end

  def test_say_favourite_language
    student = Student.new("Charles", "E34")
    assert_equal("I love Ruby!", student.say_favourite_language("Ruby"))
  end

end
