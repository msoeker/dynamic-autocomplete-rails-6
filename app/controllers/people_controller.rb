class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def search
    q = params[:q].downcase
    @people = Person.where("first_name ILIKE ? or last_name ILIKE ?", "%#{q}%", "%#{q}%").limit(5)
  end
    
  private

  def force_json
    request.format = :json
  end
end
