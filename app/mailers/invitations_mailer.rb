class InvitationsMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(invitation)
    @invitation = invitation
    mail(to: @invitation.email, subject: 'Welcome to My Awesome LandingPage')
  end

  def info_email(invitation)
    @invitation = invitation
    mail(to: @invitation.email, subject: 'You have new invitation')
  end
end
