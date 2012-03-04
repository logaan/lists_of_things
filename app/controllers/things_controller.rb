class ThingsController < ApplicationController
  def index
    @things = Thing.all(:include => :links_to_parents).
                    find_all{|t| t.links_to_parents.count == 0 }
  end

  def search
    things = Thing.all(:conditions => ["name LIKE ?", params[:term] + "%"])
    autocomplete_things = things.map{|t| {:value => t.name, :id => t.id } }

    render :json => autocomplete_things
  end

  def show
    @thing = Thing.find(params[:id])
  end

  def create
    thing = Thing.new(params[:thing])

    if thing.save
      redirect_to :back
    else
      render "new"
    end
  end

  def destroy
    Thing.find(params[:id]).destroy
    redirect_to :back
  end
end
