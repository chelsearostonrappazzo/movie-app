class Api::ActorsController < ApplicationController
  def one
    @actor_one = Actor.find_by(id: 6)
    render "actor_one.json.jb"
  end
end
