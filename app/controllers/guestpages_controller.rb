class GuestpagesController < ApplicationController
before_filter :authenticate_guest!, only: [:show]

  def show
  	@guest = Guest.find(params[:id])
  	if @guest
  		@everythings = @guest.everythings
  		@everythings
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end

end
