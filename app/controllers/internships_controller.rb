class InternshipsController < ApplicationController
  def Index
    @internships = Internship.all
  end
end
