class RoutesController < ApplicationController
    def index
        @routes= Route.all.order(created_at: :desc)
        @route = Route.new
    end

    def show
        @route = Route.find_by(id: params[:id])
    end

    def create
        @route = Route.new(route_name: params[:route_name], image_name: params[:image], function_name: params[:function_name])

        if @route.save
            if params[:image]
                @route.image_name = "#{@route.id}.png"
                image = params[:image]
                File.binwrite("public/route_images/#{@route.image_name}", image.read)
                @route.update(image_name: "#{@route.id}.png" )
            end
            redirect_to("/routes")
        else
            render("routes")
        end
        
    end

    def destroy
        @route=Route.find_by(id: params[:id])
        @route.destroy
        redirect_to("/routes")
    end
    
    def edit
        @route = Route.find_by(id: params[:id])
    end
    
    def update
        @route = Route.find_by(id: params[:id])
        @route.route_name = params[:route_name]
        @route.function_name = params[:function_name]

        if @route.save
            if params[:image]
                @route.image_name = "#{@route.id}.png"
                image = params[:image]
                File.binwrite("public/route_images/#{@route.image_name}", image.read)
            end
            redirect_to("/routes")
        else
            render("routes")
        end
    end

end