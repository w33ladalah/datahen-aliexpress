nokogiri = Nokogiri.HTML(content)
products = nokogiri.css('.product-container div.JIIxO > a')

products.each do |product_link|
  # p product_link
  href = product_link['href'].split('?').first
  url = URI.join('https://www.aliexpress.com', href).to_s
  display_width = rand 800..1920
  display_height = rand 728..1280
  pages << {
		url: url,
		page_type: 'products',
    fetch_type: 'browser',
		vars: {
			category: page['vars']['category'],
      url: url
		}
  }
end
