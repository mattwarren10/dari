require 'test_helper'

class SentencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentence = sentences(:one)
  end

  test "should get index" do
    get sentences_url
    assert_response :success
  end

  test "should get new" do
    get new_sentence_url
    assert_response :success
  end

  test "should create sentence" do
    assert_difference('Sentence.count') do
      post sentences_url, params: { sentence: { english_sentence: @sentence.english_sentence, pronunciation_sentence: @sentence.pronunciation_sentence, translation_sentence: @sentence.translation_sentence, transliteration_sentence: @sentence.transliteration_sentence, word_id: @sentence.word_id } }
    end

    assert_redirected_to sentence_url(Sentence.last)
  end

  test "should show sentence" do
    get sentence_url(@sentence)
    assert_response :success
  end

  test "should get edit" do
    get edit_sentence_url(@sentence)
    assert_response :success
  end

  test "should update sentence" do
    patch sentence_url(@sentence), params: { sentence: { english_sentence: @sentence.english_sentence, pronunciation_sentence: @sentence.pronunciation_sentence, translation_sentence: @sentence.translation_sentence, transliteration_sentence: @sentence.transliteration_sentence, word_id: @sentence.word_id } }
    assert_redirected_to sentence_url(@sentence)
  end

  test "should destroy sentence" do
    assert_difference('Sentence.count', -1) do
      delete sentence_url(@sentence)
    end

    assert_redirected_to sentences_url
  end
end
