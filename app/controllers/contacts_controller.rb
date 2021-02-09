class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.number
    raise
    if @contact.save
      ContactMailer.general_message(@contact).deliver_now
      redirect_to root_path
      flash[:notice] = "Votre demande a bien été transmise"
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :address, :phone, :number, :message)
  end
end