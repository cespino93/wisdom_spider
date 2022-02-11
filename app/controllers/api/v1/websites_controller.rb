class Api::V1::WebsitesController < ApplicationController
    def index
        websites = Website.all
        #render json: @websites
        # options = {
        #     #include associated category
        #     include: [:category]
        # }
        #render json: WebsiteSerializer.new(websites, options)
        render json: WebsiteSerializer.new(websites)
    end 
    
    def create
        website = Website.new(website_params) 
        #this is a strong params code
        if website.save
            render json: WebsiteSerializer.new(website)
            # sends status codes to the fetch request
        else
            render json: {errors: website.errors.full_messages}
        end
    end

    def destroy
        websites = Website.find_by_id(params[:id])
        websites.destroy
    end


    private

    def website_params
        params.require(:website).permit(:title, :description, :image_url, :category_id)
    end
end
