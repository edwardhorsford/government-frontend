class PersonPresenter < ContentItemPresenter
  include ContentItem::Body

  def title
    content_item["title"]
  end

  def image
    content_item["details"]["image"]
  end

  def body
    "<p>Theresa May became Prime Minister on 13 July 2016. Theresa served as Home Secretary from May 2010 until July 2016. She was elected Conservative MP for Maidenhead in May 1997.</p>  <h2 id=\"education\">Education</h2><p>Theresa had a varied education, spanning both the state and private sectors and attending both grammar school and comprehensive school. She studied geography at St Hugh’s College, Oxford University.</p><h2 id=\"political-career\">Political career</h2><p>Theresa has been involved in politics at all levels for many years, beginning by stuffing envelopes at her local Conservative association before going on to be a councillor in the London borough of Merton from 1986 to 1994. During her time at Merton, Theresa was Chair of Education from 1988 to 1990 and Deputy Group Leader and Housing Spokesperson from 1992 to 1994.</p><p>Theresa was elected MP for Maidenhead in May 1997, after which she held several shadow positions, including:</p><ul>  <li>Shadow Secretary of State for Education and Employment 1999 to 2001</li>  <li>Shadow Secretary of State for Transport, Local Government and the Regions 2001 to 2002</li>  <li>Shadow Secretary of State for the Family 2004 to 2005</li>  <li>Shadow Secretary of State for Culture, Media and Sport 2005</li>  <li>Shadow Leader of the House of Commons 2005 to 2009</li>  <li>Parliamentary Under Secretary of State for Women and Equalities 2010 to 2012</li></ul><p>Theresa served as Home Secretary from May 2010 until July 2016.</p><h2 id=\"career-outside-politics\">Career outside politics</h2><p>After starting her career at the Bank of England, Theresa went on to the Association for Payment Clearing Services, firstly as Head of the European affairs unit from 1989 to 1996 and then as Senior Adviser on international affairs from 1996 to 1997.</p>"
  end

  def image
    {
      "url" => "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/person/image/6/s465_PM_portrait_960x640.jpg",
      "alt_text" => title,
    }
  end

  def contents
    [
      { href: '#biography', text: "Biography" },
      { href: '#roles', text: "Roles" },
      { href: '#previous', text: "Previous roles" },
    ]
  end

  def current_role_appointments
    links["current_role_appointments"]
  end

  def previous_role_appointments
    links["previous_role_appointments"]
  end

  def links
    {
      "current_role_appointments" => [
        {
          "document_type" => "appointment",
          "links" => {
            "role" => [
              {
                "title" => "Minister for the Civil Service",
                "base_path" => "/government/ministers/minister-for-the-civil-service",
                "details" => {
                  "responsibilities" => "<p>The Minister for the Civil Service is responsible for regulating the <a rel=\"external\" href=\"http://www.civilservice.gov.uk/\">Civil Service</a>.</p>\n<p>The <a rel=\"external\" href=\"http://www.legislation.gov.uk/ukpga/1992/61/contents\">Civil Service (Management Functions) Act of 1992</a>, allows the Minister for the Civil Service to delegate power to other ministers and devolved administrations.</p>\n\n<p>This role was created in 1968 and is always held by the <a href=\"https://www.gov.uk/government/ministers/prime-minister\">Prime Minister</a>.</p>",
                }
              }
            ]
          }
        }
      ],
      "previous_role_appointments" => [
        {
          "document_type" => "appointment",
          "links" => {
            "role" => [
              {
                "title" => "Minister for Women and Equalities",
                "base_path" => "/government/ministers/minister-for-the-civil-service",
              }
            ]
          }
        },
        {
          "document_type" => "appointment",
          "links" => {
            "role" => [
              {
                "title" => "Minister for Equalities",
                "base_path" => "/government/ministers/minister-for-the-civil-service",
              }
            ]
          }
        },
        {
          "document_type" => "appointment",
          "links" => {
            "role" => [
              {
                "title" => "Secretary of State for the Home Department",
                "base_path" => "/government/ministers/secretary-of-state-for-the-home-department",
              }
            ]
          }
        },
      ]
    }
  end
end
