class StaticPagesController < ApplicationController
  def root
    @api = [
      "books",
      "sections"
    ]
  end
end
