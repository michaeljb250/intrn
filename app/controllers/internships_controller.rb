class InternshipsController < ApplicationController
  def index
    @internships = Internship.all
    if params[:query]
      sql_query = "internships.title @@ :query
      OR internships.industry @@ :query
      OR internships.company @@ :query
      OR internships.description @@ :query
      "

     @internships = @internships.where(sql_query, query: "%#{params[:query]}%")
    else
      @internships = Internship.all
    end
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
    params.require(:internship).permit(:title, :address, :paid, :dates, :industry, :description, :company, :photo)
  end
end
