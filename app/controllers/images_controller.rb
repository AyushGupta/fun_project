class ImagesController < ApplicationController
  # GET /images
  # GET /images.json
  
  rescue_from ActiveRecord::RecordNotFound, :with => :not_found
  
  def index
    if params[:id]
      @images = Image.where("image_category_id=?", params[:id])
    end
    if @images==nil or @images.size==0
      flash[:error] = "Image category not found."
      redirect_to :controller => 'home', :action=>'index'
    else
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @images }
      end
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(params[:image])

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render json: @image, status: :created, location: @image }
      else
        format.html { render action: "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end

  def categoriezed_images
    @images = Image.where("image_category_id=?", params[:category_id])
  end
  
  protected
  def not_found
    flash[:error] = "Image not found."
    redirect_to images_path
  end
  
end
