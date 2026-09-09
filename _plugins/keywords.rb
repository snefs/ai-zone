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

    MIN_MENTIONS = 1
    MAX_KEYWORDS = 12

    def generate(site)
      by_section = Hash.new { |h, k| h[k] = Hash.new(0) }

      site.posts.docs.each do |post|
        section = post.data["section"].to_s
        path = post.relative_path.to_s
        if path.include?("/solutions/")
          section = "solutions"
        elsif path.include?("/problems/")
          section = "problems"
        elsif section.empty?
          section = "problems"
        end
        words_in(post.content).each { |word| by_section[section][word] += 1 }
      end

      site.data["keywords_by_section"] = by_section.transform_values { |counts| pack(counts) }
    end

    private

    def words_in(content)
      text = content
        .gsub(/\{%[^%]*%\}/, " ")
        .gsub(/\{\{[^}]*\}\}/, " ")
        .gsub(/```.*?```/m, " ")
        .gsub(/<[^>]+>/, " ")

      text.downcase.scan(/[a-z][a-z'\-]*/)
    end

    def pack(counts)
      counts.delete_if { |word, count| count < MIN_MENTIONS || STOPWORDS.include?(word) }
      ranked = counts.sort_by { |word, count| [-count, word] }.first(MAX_KEYWORDS)
      max = ranked.first&.last.to_f
      max = 1 if max < 1

      ranked.map do |word, count|
        weight = ((count / max) * 4).round + 1
        { "word" => word, "count" => count, "weight" => weight }
      end
    end
  end
end
