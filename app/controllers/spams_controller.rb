class SpamsController < ApplicationController
  # GET /spams
  # GET /spams.json
  def index
    @spams = Spam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spams }
    end
  end

  # GET /spams/1
  # GET /spams/1.json
  def show
    @spam = Spam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spam }
    end
  end

  # GET /spams/new
  # GET /spams/new.json
  def new
    @spam = Spam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spam }
    end
  end

  # GET /spams/1/edit
  def edit
    @spam = Spam.find(params[:id])
  end

  # POST /spams
  # POST /spams.json
  def create
    @spam = Spam.new(params[:spam])

    respond_to do |format|
      if @spam.save
        format.html { redirect_to @spam, notice: 'Spam was successfully created.' }
        format.json { render json: @spam, status: :created, location: @spam }
      else
        format.html { render action: "new" }
        format.json { render json: @spam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spams/1
  # PUT /spams/1.json
  def update
    @spam = Spam.find(params[:id])

    respond_to do |format|
      if @spam.update_attributes(params[:spam])
        format.html { redirect_to @spam, notice: 'Spam was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @spam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spams/1
  # DELETE /spams/1.json
  def destroy
    @spam = Spam.find(params[:id])
    @spam.destroy

    respond_to do |format|
      format.html { redirect_to spams_url }
      format.json { head :ok }
    end
  end
end
