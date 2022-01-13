class Api::V1::WebsitesController < ApplicationController
    def index
        @websites = Website.all
        render json: @websites
    end 
    
    def create
        websites = Website.new(website_params) 
        #this is a strong params code
        if website.save
            render json: website, status: :accepted
            # sends status codes to the fetch request
          
        else
            render json: {errors: website.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def website_params
        params.require(:website).permit(:title, :description, :image_url, :category_id)
    end
end
