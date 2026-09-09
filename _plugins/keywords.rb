module Jekyll
  class KeywordsGenerator < Generator
    safe false
    priority :low

    STOPWORDS = %w[
      a an and are as at be but by for from had has have if in into is it its
      not of on or so that the their them then there these they this those to
      was we were what when where which who will with would you your i me my
      our can our over own same than very just do does did about because more
      most some such only other while after before didn don if new up out
    ].freeze

    MIN_MENTIONS = 3
    MAX_KEYWORDS = 10

    def generate(site)
      counts = Hash.new(0)
      site.posts.docs.each do |post|
        text = post.content
          .gsub(/\{%[^%]*%\}/, " ")
          .gsub(/\{\{[^}]*\}\}/, " ")
          .gsub(/```.*?```/m, " ")
          .gsub(/<[^>]+>/, " ")

        words = text.downcase.scan(/[a-z][a-z'\-]*/)
        words.each { |word| counts[word] += 1 }
      end

      counts.delete_if { |word, count| count < MIN_MENTIONS || STOPWORDS.include?(word) }

      ranked = counts.sort_by { |word, count| [-count, word] }
      site.data["keywords"] = ranked.first(MAX_KEYWORDS).map do |word, count|
        { "word" => word, "count" => count }
      end
    end
  end
end
