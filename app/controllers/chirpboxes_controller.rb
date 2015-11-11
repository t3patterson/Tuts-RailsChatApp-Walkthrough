class ChirpboxesController < ApplicationController
  def index
    @chirps = Chirpbox.all

    @new_chirp = Chirpbox.new()
    render("index")
  end

  def create
    @new_chirp= Chirpbox.new(params.require(:chirpbox).permit(:name,:message))
    @new_chirp.save
    redirect_to root_path
  end

end
