require 'presenter_test_helper'

class NewsArticlePresenterTest
  class NewsArticlePresenterTestCase < PresenterTestCase
    attr_accessor :example_schema_name

    def schema_name
      "news_article"
    end
  end

  class PresentedNewsArticleTest < NewsArticlePresenterTestCase
    test 'is linkable' do
      assert presented_item.is_a?(Linkable)
    end

    test 'is updatable' do
      assert presented_item.is_a?(Updatable)
    end

    test 'is withdrawable' do
      assert presented_item.is_a?(Withdrawable)
    end

    test 'is shareable' do
      assert presented_item.is_a?(Shareable)
    end

    test 'includes political' do
      assert presented_item.is_a?(Political)
    end

    test 'presents a description' do
      "<meta itemprop='description'>#{schema_item['description']}</meta>"
    end

    test 'presents a body' do
      "<meta itemprop='articleBody'>#{schema_item['details']['body']}</meta>"
    end

    test 'presents a readable first published date' do
      "<time itemprop='datePublished'>#{schema_item['25 December 2016']}</time>"
    end

    test 'presents the locale' do
      assert_equal schema_item['locale'], presented_item.locale
    end
  end

  class HistoryModePresentedNewsArticle < NewsArticlePresenterTestCase
    def example_schema_name
      "news_article_history_mode"
    end

    test 'presents historically political' do
      assert presented_item(example_schema_name).historically_political?
    end
  end

  class TranslatedPresentedNewsArticle < NewsArticlePresenterTestCase
    def example_schema_name
      "news_article_news_story_translated_arabic"
    end

    test 'presents the locale as the translated item locale' do
      assert_equal 'ur', presented_item(example_schema_name).locale
    end
  end
end
