module EnThraxei
  class TopicPageGenerator < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      topics = site.collections["topics"]&.docs || []
      topics.each do |topic|
        site.pages << build_page(site, topic)
      end
    end

    private

    def build_page(site, topic)
      page = Jekyll::PageWithoutAFile.new(site, site.source, topic.data["slug"], "index.html")
      page.content = ""
      page.data.merge!(
        "layout" => "topic",
        "title" => topic.data["name"],
        "topic_slug" => topic.data["slug"]
      )
      page
    end
  end
end
