class Api::ActorsController < ApplicationController
  def each
    id_number = params[:id]
    @actor = Actor.find_by(id: id_number)
    render "actor.json.jb"
  end
end
