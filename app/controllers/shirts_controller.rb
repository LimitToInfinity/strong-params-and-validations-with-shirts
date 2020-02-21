class ShirtsController < ApplicationController

    def index
        @shirts = Shirt.all
        render json: @shirts
    end

    def create
        # @shirt = Shirt.create({ size: params[:size], color: params[:color] })
        
        @shirt = Shirt.new(shirt_params)
        
        if @shirt.valid?
            @shirt.save
            render json: @shirt
        else
            # errorString = ""
            # @shirt.errors.messages.each do |message|
            #     errorString += message[1][0] + ", "
            # end
            render json: { error: @shirt.errors.messages }
        end
    end

    private

    def shirt_params
        params.require(:shirt).permit(:size, :color)
    end

end
