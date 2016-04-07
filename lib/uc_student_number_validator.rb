require 'active_model'
require 'uc_student_number'

# UcStudentNumberValidator
class IsUcStudentNumberValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless UcStudentNumber.validate(value)
      record.errors[attribute] << (
        options[:message] || 'invalid'
      )
    end
  end
end
