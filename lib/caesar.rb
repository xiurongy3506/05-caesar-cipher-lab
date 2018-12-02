def caesar_encode(user_strs, offset)
a = [*('a'..'z')]
cap = [*('A'..'Z')]
  user_strs.split("").map do |str|
    if cap.include?(str)
      str.gsub!(/#{str}/, "#{cap[(cap.index(str)+ offset)% 26]}")
    elsif a.include?(str)
      str.gsub!(/#{str}/, "#{a[(a.index(str)+ offset)% 26]}")
    else
      str
    end
  end.join("")
end

def caesar_decode(user_strs, offset)
a = [*('a'..'z')]
cap = [*('A'..'Z')]
  user_strs.split("").map do |str|
    if cap.include?(str)
      str.gsub!(/#{str}/, "#{cap[(cap.index(str)- offset)% 26]}")
    elsif a.include?(str)
      str.gsub!(/#{str}/, "#{a[(a.index(str)- offset)% 26]}")
    else
      str
    end
  end.join("")
end


