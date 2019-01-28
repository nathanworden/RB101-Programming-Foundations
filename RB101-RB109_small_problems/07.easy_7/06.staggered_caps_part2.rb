# Problem

# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter. The non-alphabetic
# characters should still be included in the return value; they just don't count
# when toggling the desired case.



def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper && char =~ /[a-zA-Z]/
      result += char.upcase
      need_upper = !need_upper
    elsif !need_upper && char =~ /[a-zA-Z]/
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end


# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'



# Book answer

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#     end
#   end
#   result
# end


# Further Exploration

# def staggered_case(string, count_non_alpha=true)
#   result = ''
#   need_upper = true
#   if count_non_alpha == true
#     string.chars.each do |char|
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     end
#   elsif count_non_alpha == false
#     string.chars.each do |char|
#       if char =~ /[a-z]/i
#         if need_upper
#           result += char.upcase
#         else
#           result += char.downcase
#         end
#         need_upper = !need_upper
#       else
#         result += char
#       end
#     end
#   end
#   result
# end



# p staggered_case('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS', false) == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 nUmBeRs'
# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'









