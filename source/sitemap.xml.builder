site_url = "http://itsNikolay.github.io/"

xml.instruct!
xml.urlset xmlns: 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  blog.articles.each do |article|
    xml.url do
      xml.loc     rel: 'alternat', href: URI.join(site_url, article.url)
      xml.lastmod File.mtime(article.source_file).iso8601
    end
  end
end
