require 'pry'

def validate_email(email)
  email.scan(/\b(?:[\w\d\S]+)@(?:[\w\d\-\.]){1,253}[\.](?:[\w]{2,5})\b/).length > 0
end
