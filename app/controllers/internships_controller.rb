class InternshipsController < ApplicationController
  def index
    @internships = Internship.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @internships.geocoded.map do |internship|
      {
        lat: internship.latitude,
        lng: internship.longitude
      }
    end
  end
  def new
    @internship = Internship.new
    end

    def create
      @internship = Internship.new(internship_params)
      @internship.save!
      #  redirect_to group_path(@group)
      end

  private
  def internship_params
    params.require(:internship).permit(:title, :address)
  end
end
