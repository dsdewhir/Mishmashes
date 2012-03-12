class HomeController < ApplicationController
  def index
    @rand_id = rand(Spam.count)
    @Spam = Spam.first(:conditions => [ "id > ?", @rand_id])
  end

end
