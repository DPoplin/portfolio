class KeyboardsController < ApplicationController
  before_action :set_keyboard, only: %i[show edit update destroy]

  # GET /keyboards or /keyboards.json
  def index
    @keyboards = Keyboard.all
  end

  # GET /keyboards/1 or /keyboards/1.json
  def show
    @keyboard = Keyboard.find(params[:id])
  end

  # GET /keyboards/new
  def new
    @keyboard = Keyboard.new
  end

  # GET /keyboards/1/edit
  def edit; end

  # POST /keyboards or /keyboards.json
  def create
    @keyboard = Keyboard.new(keyboard_params)

    respond_to do |format|
      if @keyboard.save
        format.html { redirect_to @keyboard, notice: 'Keyboard was successfully created.' }
        format.json { render :show, status: :created, location: @keyboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @keyboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keyboards/1 or /keyboards/1.json
  def update
    respond_to do |format|
      if @keyboard.update(keyboard_params)
        format.html { redirect_to @keyboard, notice: 'Keyboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @keyboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @keyboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keyboards/1 or /keyboards/1.json
  def destroy
    @keyboard.destroy
    respond_to do |format|
      format.html { redirect_to keyboards_url, notice: 'Keyboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_keyboard
    @keyboard = Keyboard.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def keyboard_params
    params.fetch(:keyboard, {}).permit(:name, :build_date, :switches, :keycaps, :photo, :id)
  end
end
