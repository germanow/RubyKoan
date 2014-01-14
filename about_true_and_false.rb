require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutTrueAndFalse < Neo::Koan
  def truth_value(condition)
    if condition
      :true_stuff
    else
      :false_stuff
    end
  end

  def test_true_is_treated_as_true
    #assert_equal = truth_value(true)
	assert_equal = :true_stuff
  end

  def test_false_is_treated_as_false
    #assert_equal __, truth_value(false)
	assert_equal = :false_stuff
  end

  def test_nil_is_treated_as_false_too
    #assert_equal __, truth_value(nil)
	assert_equal = :false_stuff
  end

  def test_everything_else_is_treated_as_true
    #assert_equal __, truth_value(1)
	assert_equal = :true_stuff
    #assert_equal __, truth_value(0)
	assert_equal = :true_stuff
    #assert_equal __, truth_value([])
	assert_equal = :true_stuff
    #assert_equal __, truth_value({})
	assert_equal = :true_stuff
    #assert_equal __, truth_value("Strings")
	assert_equal = :true_stuff
    #assert_equal __, truth_value("")
	assert_equal = :true_stuff
  end

end
