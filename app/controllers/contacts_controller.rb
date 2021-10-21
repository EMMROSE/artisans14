class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(contact_params)
    # "tout"=>"0",
    if @contact.tout
      # attention manque adresse Deniaux
      @contact.emails = ["contact@samandco-tp.com", "julien.nc14@gmail.com", "sarlmarie.tp@gmail.com", "aze2j@live.fr", "poncetemilien@hotmail.fr", "f.lefortier@gmail.com", "stephmatt.carrelage@aliceadsl.fr", "benoit.briere@logikinov.com", "a.lefrancois@rlamenagement.com", "profil@profil-amenagement.com", "contact@benoist.fr", "romain.picant@orange.fr"]
      ContactMailer.information(@contact).deliver_now
    elsif
      if @contact.electricite
        @contact.emails << "f.lefortier@gmail.com"
      end
      if @contact.plombier
        @contact.emails << "poncetemilien@hotmail.fr"
      end
      if @contact.agencement
        @contact.emails << "profil@profil-amenagement.com"
      end
      if @contact.maconnerie
        @contact.emails << "aze2j@live.fr"
      end
      if @contact.cheminee
        @contact.emails << "contact@benoist.fr"
      end
      if @contact.peinture
        @contact.emails << "romain.picant@orange.fr"
      end
      if @contact.plaquiste
        @contact.emails << "a.lefrancois@rlamenagement.com"
      end
      if @contact.couverture
        #@contact.emails << "x"
      end
      if @contact.terrassement
        @contact.emails << "sarlmarie.tp@gmail.com"
      end
      if @contact.terrassement2
        @contact.emails << "contact@samandco-tp.com"
      end
      if @contact.carrelage
        @contact.emails << "stephmatt.carrelage@aliceadsl.fr"
      end
      if @contact.chauffagiste
        @contact.emails << "julien.nc14@gmail.com"
      end

      ContactMailer.information(@contact).deliver_now
    end
      redirect_to root_path
      flash[:notice] = "Votre message a bien été transmis"
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :address, :phone, :message, :tout, :plombier, :electricite, :peinture, :carrelage, :cheminee, :menuiserie, :couverture, :agencement, :plaquiste, :terrassement, :maconnerie, :terrassement2, :chauffagiste)
  end
end
