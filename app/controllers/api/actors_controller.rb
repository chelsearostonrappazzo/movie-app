class Api::ActorsController < ApplicationController
  def one
    @actor_one = Actor.all
      render "actor_one.json.jb"
  end
end
