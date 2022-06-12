class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    begin
      if (first_operand == 0 || second_operand == 0) and operation == '/'
        return "Division by zero is not allowed."
      end
      if operation == ALLOWED_OPERATIONS[0]
        return "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      elsif operation == ALLOWED_OPERATIONS[1]
        return "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      elsif operation == ALLOWED_OPERATIONS[2]
        return "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
      end
    rescue      
      if first_operand.is_a? == String || second_operand.is_a? == String
        raise ArgumentError
      end
    end
  end
end
