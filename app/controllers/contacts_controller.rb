class ContactsController < ApplicationController

  def new
  	@contact = Contact.new
  end


  # POST /users
  # POST /users.json
  def create
    @contact = Contact.new(contact_params)
 
    respond_to do |format|
      if @contact.save
        # Tell the UserMailer to send an Email after save
        ContactMail.contact_email(@contact).deliver
        ContactMail.admin_email(@contact).deliver
 		
 		   flash[:success] = "Message was successfully sent."
        
        format.html { redirect_to new_contact_path }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        flash[:error] = "Message was NOT successfully sent."

        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def contact_params
  	params.require(:contact).permit(:name, :email, :phone, :subject, :comments)
  end


end
