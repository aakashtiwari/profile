class ContactsController < ApplicationController


def index
	
end
def new 
	@contact = Contact.new
end
def create
	@contact = Contact.new(contact_params)
	@contact.save
	redirect_to @contact
end
def show
	@contact =Contact.find(params[:id])
end
private
 def contact_params
 	params.require(:contact).permit(:name,:email,:message)
 end

end
