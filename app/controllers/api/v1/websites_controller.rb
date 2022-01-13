class Api::V1::WebsitesController < ApplicationController
    def index
        @Websites = Website.all
        render json:@websites
      end
end
