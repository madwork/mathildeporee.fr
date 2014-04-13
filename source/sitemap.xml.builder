xml.instruct!
xml.urlset 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.url do
    xml.loc "http://www.mathildeporee.fr/"
    xml.lastmod Date.today.to_time.iso8601
    xml.changefreq "daily"
    xml.priority "1.0"
  end
  sitemap.resources.select { |page| page.path =~ /\.html/ }.each do |page|
    xml.url do
      xml.loc "#{data.sitemap.url}#{page.url}"
      xml.lastmod Date.today.to_time.iso8601
      xml.changefreq page.data.changefreq || "weekly"
      xml.priority page.data.priority || "0.6"
    end
  end
end
