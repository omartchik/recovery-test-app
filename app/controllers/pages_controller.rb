class PagesController < ApplicationController
  def home
    @membres = ["omar", "baya", 'hamid', 'lyes', 'djamil', 'aurora','bahus']

    if params[:membre]
      @membres = @membres.select {|membre| membre.start_with?(params[:membre])}
    end

  end

end
