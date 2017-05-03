require 'barby/barcode/ean_8'
require 'barby/outputter/svg_outputter'

class WelcomeController < ApplicationController
  def index
  end

  def barcode
    barcode = Barby::EAN8.new(params[:ean])
    respond_to do |format|
      format.svg {     render inline: barcode.to_svg }
    end

  end
end
