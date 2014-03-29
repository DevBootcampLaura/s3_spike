class SpacesController < ApplicationController
  # before_action :set_space, only: [:show, :edit, :update, :destroy]

  # GET /friends
  # GET /friends.json
  def index
    @spaces = Space.all
  end

  # GET /friends/1
  # GET /friends/1.json
  # def show
  # end

  # GET /friends/new
  def new
    @space = Space.new
  end

  # GET /friends/1/edit
  # def edit
  # end

  # POST /friends
  # POST /friends.json
  def create
    @space = Space.new(space_params)

    respond_to do |format|
      if @space.save
        format.html { redirect_to spaces_path, notice: 'Friend was successfully created.' }
        format.json { render action: 'show', status: :created, location: @space }
      else
        format.html { render action: 'new' }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  # def update
  #   respond_to do |format|
  #     if @space.update(friend_params)
  #       format.html { redirect_to @space, notice: 'Friend was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @space.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /friends/1
  # DELETE /friends/1.json
  # def destroy
  #   @space.destroy
  #   respond_to do |format|
  #     format.html { redirect_to spaces_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_space
    #   @space = Space.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(:main_photo, :title)
    end
end