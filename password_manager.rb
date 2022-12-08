    
class PasswordManager
   def initialize
    @new_service_and_password = {}
   end
   
def add (service,password)
characters = ['!','@','$','%','&']
total_characters = 0
characters.each do |character| 
if password.include?(character)
    total_characters +=1
end
  if password.length < 8 || total_characters ==  0 

 else
  @new_service_and_password[service] = password

   puts @new_service_and_password
  end
 end
end

def password_for(service)
    find_password = @new_service_and_password[service]
  return  find_password
end 

def services
    all_services = @new_service_and_password.keys
  return all_services
    end
end


# Class recipe
# Requirements
# The password manager wiil need to:
# Allow 3 things
# 1.Allow you add new, validated, passwords
# 2.Allow you to view a specific password
# 3.Allow you to see a list of all the services for which a password has been stored

# Interface 
# Class PasswordManager

# 1nd method named 'add' ,takes 2 strings as arguments:
# def add(service,password):
# Stores the new service and its password

# 2nd method named 'password_for', takes 1 string as an argument:
# def password_for(service)
# Returns the password for that service


# 3rd method named 'services', no arguments
# def services
# Returns a list of all the services for which a password has been stored
# Does not return all the passwords

# 2 facts to consider:
# 1:
# The passwords will be stored in hash
# The keys are services
# The values are the passwords
# 2:
# This hash will need to be stored in an instance variable




# # This should create an instance of password manager
# password_manager = PasswordManager.new

# #This should allow me to access the right password
# password_manager.password_for("Acebook")

# # this should allow me to add a passwords
# password_manager.add("Acebook", "password123")
# password_manager.add("MakersBnB", "superpassword123")

# # this should show me an array of all services
# password_manager.services
