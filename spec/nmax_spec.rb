require 'spec_helper'


describe Nmax do
  before (:all) do
    @test_file = File.open('spec/test_text.txt', 'r')
  end


  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  it 'should return correct answer' do
    test_array = Nmax.get_sequences("123qwerty432 101", 3)
    expect(test_array).to eq([432, 123, 101])
  end

  it "should return correct answer from file" do
    test_array = Nmax.get_sequences(@test_file, 3)
    expect(test_array).to eq([101010101012292929295, 101010101012292929293, 232312])
  end

  it "should return error message if argument is not integer" do
    test_array = Nmax.get_sequences(@test_file, 'abc')
    expect(test_array).to eq('Wrong argument - should be integer')
  end

  after (:all) do
    @test_file.close
  end

end
