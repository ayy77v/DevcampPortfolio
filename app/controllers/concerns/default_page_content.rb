module DefaultPageContent
	extend ActiveSupport::Concern

    included do 
	  before_filter :set_title
    end

  def set_title
  	@page_title = "DevcampPortfolio| Customed Portfolio"
    @seo_keywords = "Dark One's portfolio"
  end

end