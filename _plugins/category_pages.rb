module EnThraxei
  class CategoryPageGenerator < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      categories = site.data["categories"] || []
      categories.each do |cat|
        site.pages << build_page(site, cat)
      end
    end

    private

    def build_page(site, cat)
      page = Jekyll::PageWithoutAFile.new(site, site.source, cat["slug"], "index.html")
      page.content = ""
      page.data.merge!(
        "layout" => "category",
        "title" => cat["name"],
        "category_slug" => cat["slug"]
      )
      page
    end
  end
end
