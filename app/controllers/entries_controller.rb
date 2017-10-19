class EntriesController < ApplicationController
  before_action :authenticate_user!
  def index
  	@entries = Entry.all
  	@entry = Entry.new
  end

  def create
  	binding.pry
		@entry =Entry.new(entry_params)
		@entry.save
		flash[:notice] = "entry created"
	end

	def entry_params
		params.require(:entry).permit(:title, :invoice_number)
	end
end

