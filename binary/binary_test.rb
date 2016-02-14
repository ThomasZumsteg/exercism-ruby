#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'binary'

class BinaryTest < Minitest::Test
  def test_binary_0_is_decimal_0
    assert_equal 0, Binary.new('0').to_decimal
  end

  def test_binary_1_is_decimal_1
    assert_equal 1, Binary.new('1').to_decimal
  end

  def test_binary_10_is_decimal_2
    assert_equal 2, Binary.new('10').to_decimal
  end

  def test_binary_11_is_decimal_3
    assert_equal 3, Binary.new('11').to_decimal
  end

  def test_binary_100_is_decimal_4
    assert_equal 4, Binary.new('100').to_decimal
  end

  def test_binary_1001_is_decimal_9
    assert_equal 9, Binary.new('1001').to_decimal
  end

  def test_binary_11010_is_decimal_26
    assert_equal 26, Binary.new('11010').to_decimal
  end

  def test_binary_10001101000_is_decimal_1128
    assert_equal 1128, Binary.new('10001101000').to_decimal
  end

  def test_binary_ignores_leading_zeros
    assert_equal 31, Binary.new('000011111').to_decimal
  end

  def test_invalid_binary_numbers_raise_an_error
    %w(012 10nope nope10).each do |input|
      assert_raises ArgumentError do
        Binary.new(input)
      end
    end
  end

  # Problems in exercism evolve over time,
  # as we find better ways to ask questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of Binary.
  # If you're curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html
  def test_bookkeeping
    assert_equal 1, Binary::VERSION
  end
end
