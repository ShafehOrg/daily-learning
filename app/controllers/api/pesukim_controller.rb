class Api::PesukimController < ApplicationController
  def index 
    @pesukim = Pesukim.all.limit(176)
  end

  def show
    @pasuk = Pesukim.find_by(param)
  end
end
