class EventtrackersController < ApplicationController
  # GET /eventtrackers
  # GET /eventtrackers.json
  def index
    @eventtrackers = Eventtracker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eventtrackers }
    end
  end

  # GET /eventtrackers/1
  # GET /eventtrackers/1.json
  def show
    @eventtracker = Eventtracker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eventtracker }
    end
  end

  # GET /eventtrackers/new
  # GET /eventtrackers/new.json
  def new
    @eventtracker = Eventtracker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eventtracker }
    end
  end

  # GET /eventtrackers/1/edit
  def edit
    @eventtracker = Eventtracker.find(params[:id])
  end

  # POST /eventtrackers
  # POST /eventtrackers.json
  def create
    @eventtracker = Eventtracker.new(params[:eventtracker])

    respond_to do |format|
      if @eventtracker.save
        format.html { redirect_to @eventtracker, notice: 'Eventtracker was successfully created.' }
        format.json { render json: @eventtracker, status: :created, location: @eventtracker }
      else
        format.html { render action: "new" }
        format.json { render json: @eventtracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eventtrackers/1
  # PUT /eventtrackers/1.json
  def update
    @eventtracker = Eventtracker.find(params[:id])

    respond_to do |format|
      if @eventtracker.update_attributes(params[:eventtracker])
        format.html { redirect_to @eventtracker, notice: 'Eventtracker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eventtracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventtrackers/1
  # DELETE /eventtrackers/1.json
  def destroy
    @eventtracker = Eventtracker.find(params[:id])
    @eventtracker.destroy

    respond_to do |format|
      format.html { redirect_to eventtrackers_url }
      format.json { head :no_content }
    end
  end
end
