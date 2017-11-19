class PagesController < ApplicationController
    def show
        if valid_page?
            render template: "pages/#{params[:page]}"
        else
            render file: "pages/404.html", status: :not_found
        end
    end
    
    private
    # Helper to check whether a page is valid
    def valid_page?
        File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
    end
end
