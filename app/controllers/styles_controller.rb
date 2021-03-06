class StylesController < ApplicationController
    def index
        styles = Style.all 
        render json: styles
    end

    def show
        style = Style.find(params[:id])
        render json: style
    end

    def create
        style = Style.create(style_params)
        render json: style
    end

    def update
        style = Style.find(params[:id])
        style.update(style_params)
        render json: style
    end

    def destroy
        style = Style.find(params[:id])
        Style.delete(style)
    end

    private

    def style_params
        params.require(:style).permit(:name, :user_id, :properties)
    end
end
