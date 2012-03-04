class LinksController < ApplicationController
  def create
    link = Link.new(params[:link])

    if link.save
      redirect_to :back
    else
      # TODO: How to handle?
    end
  end

  def destroy
    link = Link.find(params[:id])
    link.destroy
    redirect_to :back
  end
end
