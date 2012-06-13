class YmLinks::Link < ActiveRecord::Base
  
  belongs_to :attachable, :polymorphic => true
  validates :url, :presence => true, :url => true
  before_save :prepend_http_resolve_host_and_title
  
  class << self
    def favicon(url)
      "http://g.etfv.co/#{CGI.escape(url)}?defaulticon=lightpng"
    end
  end
  
  def facebook?
    host.to_s.match(/facebook/)
  end
  
  def twitter?
    host.to_s.match(/twitter/)
  end
  
  def favicon
    self.class.favicon(url)
  end
  
  def to_s
    title.presence || url
  end
  
  private
  def prepend_http_resolve_host_and_title
    self.url = "http://" + url unless url.match(/^.*:\/\//)
    self.host = URI.parse(url).host.to_s.sub(/^www\./,'')
    self.title = host.split(/\./).first.humanize if title.blank?
  end
  
end
