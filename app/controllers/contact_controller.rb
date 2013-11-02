class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      redirect_to contact_index_path, notice: 'Thanks for your message!'
    else
      render action: 'index'
    end
  end
end