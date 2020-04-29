class SentencesController < ApplicationController
  before_action :get_word
  before_action :set_sentence, only: [:show, :edit, :update, :destroy]

  # GET /sentences
  # GET /sentences.json
  def index
    @sentences = @word.sentences
  end

  # GET /sentences/1
  # GET /sentences/1.json
  def show
  end

  # GET /sentences/new
  def new
    @sentence = @word.sentences.build
  end

  # GET /sentences/1/edit
  def edit
  end

  # POST /sentences
  # POST /sentences.json
  def create
    @sentence = @word.sentences.build(sentence_params)

    respond_to do |format|
      if @sentence.save
        format.html { redirect_to word_posts_path(@word), notice: 'Sentence was successfully created.' }
        format.json { render :show, status: :created, location: @sentence }
      else
        format.html { render :new }
        format.json { render json: @sentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentences/1
  # PATCH/PUT /sentences/1.json
  def update
    respond_to do |format|
      if @sentence.update(sentence_params)
        format.html { redirect_to word_sentences_path(@word), notice: 'Sentence was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentence }
      else
        format.html { render :edit }
        format.json { render json: @sentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentences/1
  # DELETE /sentences/1.json
  def destroy
    @sentence.destroy
    respond_to do |format|
      format.html { redirect_to word_sentences_path(@word), notice: 'Sentence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_word
      @word = Word.find(params[:word_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_sentence
      @sentence = @word.sentences.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sentence_params
      params.require(:sentence).permit(:english_sentence, :transliteration_sentence, :translation_sentence, :pronunciation_sentence, :word_id)
    end
end
