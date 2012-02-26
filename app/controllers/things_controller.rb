class ThingsController < ApplicationController
  def index
    @things = Thing.all(:include => :links_to_parents).
                    find_all{|t| t.links_to_parents.count == 0 }
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
end
