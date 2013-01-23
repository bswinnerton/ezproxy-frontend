class ResourcesController < ApplicationController
  def index
    @resources = Resource.includes(:dj, :hj, :option).all

    respond_to do |format|
      format.html
      format.json { render json: @resources }
    end
  end

  def show
    @resource = Resource.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end

  def new
    @resource = Resource.new

    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def create
    @resource = Resource.new(params[:resource])

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render json: @resource, status: :created, location: @resource }
      else
        format.html { render action: "new" }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @resource = Resource.find(params[:id])

    respond_to do |format|
      if @resource.update_attributes(params[:resource])
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resource = Resource.update(params[:id], :is_deleted => true)

    respond_to do |format|
      format.html { redirect_to resources_url }
      format.json { head :no_content }
    end
  end

  def undestroy
    @resource = Resource.unscoped.update(params[:id], :is_deleted => false)

    respond_to do |format|
      format.html { redirect_to resources_url }
      format.json { head :no_content }
    end
  end

end
