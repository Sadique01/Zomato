# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def welcome_email(email)
    # @user = params[:user]
    mail(to: email, subject: 'Welcome !!')
  end
end
