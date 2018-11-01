class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
		@contact = Contact.new
	end

	def new
		@contact = Contact.new
		@contacts = Contact.all
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			redirect_to @contact
		else
			render 'new'
		end
	end
	def show
		@contact = Contact.find(params[:id])
	end
private
	def contact_params
		params.require(:contact).permit(:address,:phone,:email)
	end
end
