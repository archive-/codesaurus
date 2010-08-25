class FeaturesController < ApplicationController
  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(params[:feature])
    if @feature.save
      flash[:notice] = 'Feature successfully saved.'
      redirect_to @feature
    else
      flash[:error] = 'There was a problem creating the feature.'
      render action: 'new'
    end
  end

  def show
    @feature = Feature.find(params[:id])
  end

  def index
    if !params[:q].blank?
      @features = Feature.where('features.name LIKE ?', "%#{params[:q]}%")
    else
      @features = Feature.all
    end  
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update_attributes(params[:feature])
        flash[:notice] = 'Feature successfully updated.'
        redirect_to @feature
      else
        flash[:error] = 'There was a problem updating the feature.'
        render action: 'edit'
      end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
  end
end
