class CollectionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    render json: Collection.create(collection_params)
  end

  def show
    render json: Collection.find(params[:id])
  end

  protected

    def collection_params
      params.require(:collection).permit(:name)
    end
end
