Question 20 1 / 1 Points Correct
Your team is asked to refactor some legacy code used by the marketing team. One of the requirements of the project is to change the implementation from using basic looping structures to using iterative methods instead.

Sample data:

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]
Legacy code:

counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end
The team comes up with four options to replace the legacy code, which you then discuss during a code review. Select all the options which replicate the functionality of the legacy code.

Your Answer
A
mailing_campaign_leads.map do |lead|
  lead[:name].capitalize!
end

mailing_campaign_leads.select! do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
B
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.keep_if do |lead|
  lead[:days_since_login] <= 60 && lead[:mailing_list]
end
C
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list
end
D
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
Discussion
Correct:

D. This implements the requirements correctly.

Incorrect:

A. This only capitalizes the first name in the name string. You might also note that this is not really an appropriate use of map, and each would be a better choice here.

B. This performs an incorrect comparison in the conditional, using <= instead of <; although this error isn't surfaced by the test data it could have an impact in production.

C. When evaluating our usable_leads, we want to check that the customer's last login was less than 60 days ago and also that they are subscribed to our mailing list. Because this solution uses reject rather than select it is only eliminating leads where neither of those things are true rather than just one of them. This could be fixed by using || instead of && in the conditional.

Review Topics:

Looping
Selection and Transformation
Methods