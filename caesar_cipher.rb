def caeser_cipher(plaintext, shift_factor)
  numbers = Array (1..26)
  lower_alpha = numbers.zip(Array ("a".."z")).to_h
  upper_alpha = numbers.zip(Array ("A".."Z")).to_h
  
  encr_arr = Array.new

  plaintext.chars.each do |char|
    if /[[:upper:]]/.match(char) != nil
      shifted_char = upper_alpha.key(char) + shift_factor
      if shifted_char > 26
        shifted_char -= 26
      end
      encr_arr.push(upper_alpha[shifted_char])
    elsif /[[:lower:]]/.match(char) != nil
      shifted_char = lower_alpha.key(char) + shift_factor
      if shifted_char > 26
        shifted_char -= 26
      end
      encr_arr.push(lower_alpha[shifted_char])
    else
      encr_arr.push(char)
    end
  end
  encr_arr.join
end

puts caeser_cipher("What a string!", 5)