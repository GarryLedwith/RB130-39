class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    return '0000000000' unless valid_number
    if clean_num.size == 10
      clean_num
    else
      clean_num[1..10]
    end
  end

  def clean_num
    @phone_number.gsub(/[^0-9]/, '')
  end

  def area_code
    clean_num[0..2]
  end

  def includes_alpha_chars?
    @phone_number.chars.any? { |n| n =~ /[a-zA-Z]/ }
  end

  def to_s
    "(#{number[0, 3]}) #{number[3, 3]}-#{number[6, 4]}"
  end

  def valid_number
    return false if includes_alpha_chars?

    clean_num.size == 10 || clean_num.size == 11 && clean_num[0] == '1'
  end
end
