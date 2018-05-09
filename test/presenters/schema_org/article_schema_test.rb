require 'test_helper'

class SchemaOrgArticleSchemaTest < ActiveSupport::TestCase
  test 'the basics' do
    content_item = GovukSchemas::RandomExample.for_schema(frontend_schema: 'case_study') do |random|
      random.merge("base_path" => "/foo")
    end
    presenter = CaseStudyPresenter.new(content_item)

    schema = SchemaOrg::ArticleSchema.new(presenter).structured_data

    assert_equal schema["@type"], "Article"
    assert_equal schema["mainEntityOfPage"]["@id"], "https://www.test.gov.uk/foo"
  end
end
