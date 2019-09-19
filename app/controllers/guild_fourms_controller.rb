class GuildFourmsController < ApplicationController
  before_action :set_guild_fourm, only: [:show, :edit, :update, :destroy]

  # GET /guild_fourms
  # GET /guild_fourms.json
  def index
    @guild_fourms = GuildFourm.all
  end

  # GET /guild_fourms/1
  # GET /guild_fourms/1.json
  def show
  end

  # GET /guild_fourms/new
  def new
    @guild_fourm = GuildFourm.new
  end

  # GET /guild_fourms/1/edit
  def edit
  end

  # POST /guild_fourms
  # POST /guild_fourms.json
  def create
    @guild_fourm = GuildFourm.new(guild_fourm_params)

    respond_to do |format|
      if @guild_fourm.save
        format.html { redirect_to @guild_fourm, notice: 'Guild fourm was successfully created.' }
        format.json { render :show, status: :created, location: @guild_fourm }
      else
        format.html { render :new }
        format.json { render json: @guild_fourm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guild_fourms/1
  # PATCH/PUT /guild_fourms/1.json
  def update
    respond_to do |format|
      if @guild_fourm.update(guild_fourm_params)
        format.html { redirect_to @guild_fourm, notice: 'Guild fourm was successfully updated.' }
        format.json { render :show, status: :ok, location: @guild_fourm }
      else
        format.html { render :edit }
        format.json { render json: @guild_fourm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guild_fourms/1
  # DELETE /guild_fourms/1.json
  def destroy
    @guild_fourm.destroy
    respond_to do |format|
      format.html { redirect_to guild_fourms_url, notice: 'Guild fourm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guild_fourm
      @guild_fourm = GuildFourm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guild_fourm_params
      params.fetch(:guild_fourm, {})
    end
end
