class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.emails = []
    # "tout"=>"0",
    if @contact.tout
      # attention manque 2 adresses Picant Deniaux
      email = ["sarlmarie.tp@gmail.com", "aze2j@live.fr", "poncetemilien@hotmail.fr", "f.lefortier@gmail.com", "stephmatt.carrelage@aliceadsl.fr", "benoit.briere@logikinov.com", "a.lefrancois@rlamenagement.com", "profil@profil-amenagement.com", "contact@benoist.fr"]
      ContactMailer.information(email).deliver_now
      redirect_to root_path
      flash[:notice] = "Votre message a bien été transmis"
    elsif
      if @contact.electricite
        email << "f.lefortier@gmail.com"
      end
      if @contact.plombier
        email << "poncetemilien@hotmail.fr"
      end
      if @contact.agencement
        email << "profil@profil-amenagement.com"
      end
      if @contact.maconnerie
        email << "aze2j@live.fr"
      end
      if @contact.cheminee
        email << "contact@benoist.fr"
      end
      if @contact.peinture
        email << "x"
      end
      if @contact.plaquiste
        email << "a.lefrancois@rlamenagement.com"
      end
      if @contact.couverture
        email << "x"
      end
      if @contact.terrassement
        email << "sarlmarie.tp@gmail.com"
      end
      if @contact.carrelage
        email << "stephmatt.carrelage@aliceadsl.fr"
      end
      ContactMailer.information(email).deliver_now
      redirect_to root_path
      flash[:notice] = "Votre message a bien été transmis"
    end
    # if @contact.save
    #   ContactMailer.general_message(@contact).deliver_now
    #   redirect_to root_path
    #   flash[:notice] = "Votre demande a bien été transmise"
    # else
    #   render :new
    #   flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    # end
    redirect_to root_path
    flash[:notice] = "Votre message a bien été transmis"
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :address, :phone, :message, :tout, :plombier, :electricite, :peinture, :carrelage, :cheminee, :menuiserie, :couverture, :agencement, :plaquiste, :terrassement, :maconnerie, :terrassement)
  end
end
