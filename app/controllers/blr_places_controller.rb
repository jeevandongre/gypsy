class BlrPlacesController < ApplicationController
  # GET /blr_places
  # GET /blr_places.json
  def index
    @blr_places = BlrPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blr_places }
    end
  end

  # GET /blr_places/1
  # GET /blr_places/1.json
  def show
    @blr_place = BlrPlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blr_place }
    end
  end

  # GET /blr_places/new
  # GET /blr_places/new.json
  def new
    @blr_place = BlrPlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blr_place }
    end
  end

  # GET /blr_places/1/edit
  def edit
    @blr_place = BlrPlace.find(params[:id])
  end

  # POST /blr_places
  # POST /blr_places.json
  def create
    @blr_place = BlrPlace.new(params[:blr_place])

    respond_to do |format|
      if @blr_place.save
        format.html { redirect_to @blr_place, notice: 'Blr place was successfully created.' }
        format.json { render json: @blr_place, status: :created, location: @blr_place }
      else
        format.html { render action: "new" }
        format.json { render json: @blr_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blr_places/1
  # PUT /blr_places/1.json
  def update
    @blr_place = BlrPlace.find(params[:id])

    respond_to do |format|
      if @blr_place.update_attributes(params[:blr_place])
        format.html { redirect_to @blr_place, notice: 'Blr place was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blr_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blr_places/1
  # DELETE /blr_places/1.json
  def destroy
    @blr_place = BlrPlace.find(params[:id])
    @blr_place.destroy

    respond_to do |format|
      format.html { redirect_to blr_places_url }
      format.json { head :no_content }
    end
  end
end
