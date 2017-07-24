class InstructionsController < ApplicationController
  before_action :set_instruction, only: [:show, :edit, :update, :destroy]

  def index
    @instructions = Instruction.all
  end

  def show
  end

  def new
    @instruction = Instruction.new
  end

  def edit
    @instruction = Instruction.find(params[:id])
  end

  def create
    @instruction = Instruction.new(instruction_params)

    respond_to do |format|
      if @instruction.save
        format.html { redirect_to @instruction, notice: 'Instruction was successfully created.' }
        format.json { render :show, status: :created, location: @instruction }
      else
        format.html { render :new }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @instruction.update(instruction_params)
        format.html { redirect_to @instruction, notice: 'Instruction was successfully updated.' }
        format.json { render :show, status: :ok, location: @instruction }
      else
        format.html { render :edit }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instruction.destroy
    respond_to do |format|
      format.html { redirect_to instructions_url, notice: 'Instruction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def search
  sentence = params[:q]
  words = sentence.split(" ")
  instructions = Instruction.search_for(words)

  render json: instructions
end

  private
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end

    def instruction_params
      params.require(:instruction).permit(:word, :sign)
    end
end
