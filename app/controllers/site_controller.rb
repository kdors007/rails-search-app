class SiteController < ApplicationController
  def search
  	# @artists = Artist.where("name LIKE '%#{params[:term]}%'")
  	# unless params[:term].nil?
  	# 	@artists = Artist.where("name like ?", "%#{params[:term]}%")
  	# end
  	# @artists = Artist.search(params[:term])
  	unless params[:term].nil?
	  	artists = Artist.where("name like ?", "%#{params[:term]}%") #search for artist
	  	albums = Album.where("name like ?", "%#{params[:term]}%") #search for albums
	  	labels = Label.where("name like ?", "%#{params[:term]}%") #search for labels
	  	@results = artists + albums + labels
  	end
  end
end
