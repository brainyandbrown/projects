# INSTRUCTIONS: To run this code, please type 'ruby code_challenge.rb' in the command line. Follow the prompts to test and generate email addresses.

$stdout.puts 'What is your first name?'
  f_name = $stdin.gets.chomp
$stdout.puts 'What is your last name?'
  l_name = $stdin.gets.chomp
$stdout.puts 'What is your email domain?'
  domain = $stdin.gets.chomp
if domain == 'ironthrone.com'
  puts f_name.downcase + '.' + l_name.downcase + '@' + domain
elsif domain == 'direwolves.com'
  puts f_name.downcase + '.' + l_name.downcase.split('')[0] + '@' + domain || f_name.downcase.split('')[0] + '.' + l_name.downcase + '@' + domain
elsif domain == 'littlefinger.com'
  puts f_name.downcase.split('')[0] + '.' + l_name.downcase.split('')[0] + '@' + domain
else
  puts 'email prediction not found'
end
