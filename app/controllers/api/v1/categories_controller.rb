class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: CategorySerializer.new(categories)
    end

    def create
        category = Category.new

        if category.save
            render json: category, status: :accepted
        else
            render json: {errors: category.errors.full_messages}, status: :unprocessable_entity
        end

    end

    private

        def category_params
            params.require(:category).permit(:name)
        end

end
