
class HomePage < SitePrism::Page
  set_url '/'
  element :link_facebook, '.social-icons > li:nth-child(1) > a'
  element :link_instagram, '.social-icons > li:nth-child(2) > a'
  element :link_linkedin, '.social-icons > li:nth-child(3) > a'

  def exists_facebook_link?
    link_facebook.visible?
  end

  def exists_instagram_link?
    link_instagram.visible?
  end

  def exists_linkedin_link?
    link_linkedin.visible?
  end

end
