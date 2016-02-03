class ShortcodesController < ApplicationController
  def create
    @shortcode = Shortcode.create(destination_url: "http://" + params[:destination_url])
    redirect_to show_shortcode_path(@shortcode.id)
  end

  def show
    @shortcode = Shortcode.find(params[:id])
  end

  def new
    @shortcode = Shortcode.new()
  end

  def redirect
    shortcode = Shortcode.find(params[:id])
    shortcode.update_columns( num_clicks: (shortcode.numclicks + 1) )
    redirect_to shortcode.destination_url
  end
end
