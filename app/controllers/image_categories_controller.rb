class ImageCategoriesController < ApplicationController
  # GET /image_categories
  # GET /image_categories.json
  def index
    @image_categories = ImageCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_categories }
    end
  end

  # GET /image_categories/1
  # GET /image_categories/1.json
  def show
    @image_category = ImageCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_category }
    end
  end

  # GET /image_categories/new
  # GET /image_categories/new.json
  def new
    @image_category = ImageCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_category }
    end
  end

  # GET /image_categories/1/edit
  def edit
    @image_category = ImageCategory.find(params[:id])
  end

  # POST /image_categories
  # POST /image_categories.json
  def create
    @image_category = ImageCategory.new(params[:image_category])

    respond_to do |format|
      if @image_category.save
        format.html { redirect_to @image_category, notice: 'Image category was successfully created.' }
        format.json { render json: @image_category, status: :created, location: @image_category }
      else
        format.html { render action: "new" }
        format.json { render json: @image_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /image_categories/1
  # PUT /image_categories/1.json
  def update
    @image_category = ImageCategory.find(params[:id])

    respond_to do |format|
      if @image_category.update_attributes(params[:image_category])
        format.html { redirect_to @image_category, notice: 'Image category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_categories/1
  # DELETE /image_categories/1.json
  def destroy
    @image_category = ImageCategory.find(params[:id])
    @image_category.destroy

    respond_to do |format|
      format.html { redirect_to image_categories_url }
      format.json { head :no_content }
    end
  end
end
