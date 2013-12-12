class ContactMail < ActionMailer::Base
  
  # It’s important to pass those parameters to the mail method 
  # because they will be the contents of the mail you’re about to send.
  # There are other parameters available. It’s also very important
  # to use the headers method because sendmail in some web hosts 
  # only deliver mail when Return-Path is present.

  attr_accessor :name, :email, :phone, :subject, :comments

  default from: "purplestonegroup.com@gmail.com"

  headers = {'Return-Path' => 'purplestonegroup.com@gmail.com'}

  # passing a method to send email to the user
  def contact_email(contact)
    
    @contact = contact
    
    @url  = 'http://purplestonegroup.herokuapp.com/contacts/new'
    
    mail(
    	to: @contact.email,
    	subject: 'Message from the contact form of Purple Stone Group',
    	from: "PurpleStoneGroup <purplestonegroup.com@gmail.com>",
      	return_path: "purplestonegroup.com@gmail.com",
      	date: Time.now,
      	content_type: "text/html"
    )
  end

   # passing a method to send email to the admin
  def admin_email(contact)
        
    @contact = contact

    mail(
    	to: "purplestonegroup.com@gmail.com",
    	subject: 'Message from the contact form of Purple Stone Group',
    	from: "PurpleStoneGroup <purplestonegroup.com@gmail.com>",
      	return_path: "purplestonegroup.com@gmail.com",
      	date: Time.now,
      	content_type: "text/html"
    )
  end

end
