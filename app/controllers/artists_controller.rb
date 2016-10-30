class ArtistsController < ApplicationController
    helper_method :sort_artists, :sort_direction

      def index
        @artists = Artist.all
      end

      def show
        @artist = Artist.find(params[:id])
        @artists = Artist.all
        @songs = Song.all
        # @songs = song.order(sort_products + ' ' + sort_direction)
      end

      def edit
        @artist = Artist.find(params[:id])
      end

      def update
        @artist = Artist.find(params[:id])

        location_params = params.require( :artist ).permit( :name, :image )


        if @artist.update_attributes( location_params )
          redirect_to @artist
        else
          render 'edit'
        end
      end

      def destroy
        @artist = Artist.find(params[:id])

        @artist.destroy

        redirect_to locations_path
      end




      def new
        @artist = Artist.new
      end

      def create
        artist_params = params.require( :artist ).permit( :name, :image )

        @artist = Artist.new(artist_params)

        if @artist.save
          redirect_to @artist
        else
          render 'new'
        end
      end
end
