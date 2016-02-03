class WebsitesController < ApplicationController
  def index
    @websites = Website.order(:rank).paginate(:page => params[:page], :per_page => 25)
  end

  def update
    website = Website.find(params[:id])
    website.update_columns(url: params[:url])
    render :partial => "/websites/table_row", :locals => { :website => website }
  end
end
