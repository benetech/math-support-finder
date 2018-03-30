class UsersHaveRoles < ActiveRecord::Migration
  def up
    # Prepare the role (enum) column
    add_column :users, :role, :integer, default: 0

    # Update admins to use the appropriate role
    User.where(admin: true).find_each do |user|
      user.role = 'admin'
      user.save(validate: false)
    end

    # Toss the now-unused admin column
    remove_column :users, :admin
  end

  def down
    # Restore the admin column
    add_column :users, :admin, :boolean, default: false

    # Move role values back to the admin column
    User.where(role: User.roles[:admin]).find_each do |user|
      user.admin = true
      user.save(validate: false)
    end

    # Toss the newer role column
    remove_column :users, :role, :string
  end
end
