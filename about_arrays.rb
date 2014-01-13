require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrays < Neo::Koan
  def test_creating_arrays
    empty_array = Array.new
    assert_equal=0,Array
  end

  def test_array_literals
    array = Array.new
    assert_equal = array

    array[0] = 1
    assert_equal = 1

    array[1] = 2
    assert_equal = [1,2]

    array << 333
    assert_equal = [1,2,333]
  end

  def test_accessing_array_elements
    array = [:peanut, :butter, :and, :jelly]

    #assert_equal = array[0]
	assert_equal = :peanut
    #assert_equal = array.first
	assert_equal = :peanut
    #assert_equal = array[3]
	assert_equal = :and
    #assert_equal = array.last
	assert_equal = :jelly
    #assert_equal = array[-1]
	assert_equal = nil
    #assert_equal = array[-3]
	assert_equal = nil
  end

  def test_slicing_arrays
    array = [:peanut, :butter, :and, :jelly]

    #assert_equal = array[0,1]
	assert_equal = [:peanut]
    #assert_equal = array[0,2]
	assert_equal=[:peanut, :butter]
    #assert_equal = array[2,2]
	assert_equal= nil
    #assert_equal = array[2,20]
	assert_equal = [:and, :jelly]
    #assert_equal = array[4,0]
	assert_equal = nil
    #assert_equal = array[4,100]
    assert_equal = nil
	#assert_equal = array[5,0]
	assert_equal = nil
  end

  def test_arrays_and_ranges
    #assert_equal = (1..5).class
	assert_equal = Range
    assert_not_equal = [1,2,3,4,5], (1..5)
    #assert_equal = (1..5).to_a
	assert_equal = [1,2,3,4,5]
    #assert_equal = (1...5).to_a
	assert_equal = [1,2,3,4]
  end

  def test_slicing_with_ranges
    array = [:peanut, :butter, :and, :jelly]

    #assert_equal __, array[0..2]
	assert_equal = [:peanut, :butter, :and]
    #assert_equal __, array[0...2]
	assert_equal = [:peanut, :butter]
    #assert_equal __, array[2..-1]
	assert_equal = [:and,:jelly]
  end

  def test_pushing_and_popping_arrays
    array = [1,2]
    array.push(:last)

    assert_equal = [1,2,:last]

    popped_value = array.pop
    #assert_equal = popped_value
	assert_equal = :last
    #assert_equal = array
	assert_equal = [1,2]
  end

  def test_shifting_arrays
    array = [1,2]
    array.unshift(:first)

    #assert_equal = array
	assert_equal = [:first,1,2]

    shifted_value = array.shift
    #assert_equal = shifted_value
	assert_equal = :first
    #assert_equal = array
	assert_equal = [1,2]
  end

end
