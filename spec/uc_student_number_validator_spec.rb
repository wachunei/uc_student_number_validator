require 'spec_helper'

class TestUser < TestModel
  validates :number, presence: true, is_uc_student_number: true
end

class TestUserAllowsNil < TestModel
  validates :number, is_uc_student_number: true, allow_nil: true
end

class TestUserCustomMessage < TestModel
  validates :number, is_uc_student_number: { message: 'FAIL' }
end

describe IsUcStudentNumberValidator do
  it 'has a version number' do
    expect(UcStudentNumberValidator::VERSION).not_to be nil
  end

  it 'includes uc_student_number' do
    expect(UcStudentNumber).not_to be nil
  end

  it 'includes uc_student_number_validator' do
    expect(UcStudentNumberValidator).not_to be nil
  end

  it 'should validate a rut' do
    expect(UcStudentNumber.validate('10637419')).to be true
  end

  it 'should create a model' do
    user = TestUser.new(test: true)
    expect(user).not_to be nil
  end

  it 'should read attributes from a model' do
    word = '72134b2364'
    user = TestUser.new(test: word)
    expect(user.read_attribute_for_validation(:test)).to eq(word)
  end

  it 'should validate student number from a model' do
    user = TestUser.new(number: '10637419')
    expect(user).to be_valid
  end

  it 'should not validate an invalid student number from a model' do
    user = TestUser.new(number: '10637412')
    expect(user).not_to be_valid
  end

  it 'should allow nil student number from a model' do
    user = TestUserAllowsNil.new
    expect(user).to be_valid
  end

  it 'should use the default message' do
    user = TestUser.new(number: 'fake')
    user.validate
    expect(user.errors[:number]).to include('invalid')
  end

  it 'should use a custom message' do
    user = TestUserCustomMessage.new(number: 'fake')
    user.validate
    expect(user.errors[:number]).to include('FAIL')
  end
end
