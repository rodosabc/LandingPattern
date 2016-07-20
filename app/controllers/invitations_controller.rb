class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    if @invitation.save
      redirect_to root_url, :notice => "Thanks for your interest. We will get in touch with you when we are ready to accept more users."
    else
      render :action => 'new'
    end
  end
  private

  def invitation_params
    params.require(:invitation).permit(:first_name, :last_name,:email, :phone)
  end
end
