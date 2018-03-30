json.extract! @user, :id, :first_name, :last_name, :email, :created_at, :updated_at
json.admin @user.admin?
