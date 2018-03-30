class UserConfirmation < ApplicationMailer
  def for_admins(user)
    admins = User.where(role: User.roles[:admin]).map(&:to_email)
    unless admins.empty?
      @user = user
      mail(subject: "New Math Support Finder user: #{user}", to: admins)
    end
  end

  def for_user(user)
    @user = user
    mail(subject: "Welcome to Math Support Finder!", to: user.to_email)
  end
end
