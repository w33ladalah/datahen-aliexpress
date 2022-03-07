nokogiri = Nokogiri.HTML(content)
products = nokogiri.css('.product-container a._2f4Ho')

products.each do |product|
  href = product.at_css('a')['href'].split('?').first
  url = URI.join('https://www.aliexpress.com', href).to_s
  display_width = rand 800..1920
  display_height = rand 728..1280
  pages << {
		url: url,
		page_type: 'products',
		vars: {
			category: page['vars']['category'],
            url: url
		}
  }
end
