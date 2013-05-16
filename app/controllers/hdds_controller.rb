class HddsController < ApplicationController
  # GET /hdds
  # GET /hdds.json
  def index
    @hdds = Hdd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hdds }
    end
  end

  # GET /hdds/1
  # GET /hdds/1.json
  def show
    @hdd = Hdd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hdd }
    end
  end

  # GET /hdds/new
  # GET /hdds/new.json
  def new
    @hdd = Hdd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hdd }
    end
  end

  # GET /hdds/1/edit
  def edit
    @hdd = Hdd.find(params[:id])
  end

  # POST /hdds
  # POST /hdds.json
  def create
    @hdd = Hdd.new(params[:hdd])

    respond_to do |format|
      if @hdd.save
        format.html { redirect_to @hdd, notice: 'Hdd was successfully created.' }
        format.json { render json: @hdd, status: :created, location: @hdd }
      else
        format.html { render action: "new" }
        format.json { render json: @hdd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hdds/1
  # PUT /hdds/1.json
  def update
    @hdd = Hdd.find(params[:id])

    respond_to do |format|
      if @hdd.update_attributes(params[:hdd])
        format.html { redirect_to @hdd, notice: 'Hdd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hdd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hdds/1
  # DELETE /hdds/1.json
  def destroy
    @hdd = Hdd.find(params[:id])
    @hdd.destroy

    respond_to do |format|
      format.html { redirect_to hdds_url }
      format.json { head :no_content }
    end
  end
end
