# [Ridhwana]: These feel like they should be queries rather than services?
module Articles
  module Feeds
    module SetBaseFeed
      def self.call(articles: Article)
        articles
          .published
          .limited_column_select
          .includes(top_comments: :user)
          .includes(:distinct_reaction_categories)
      end
    end
  end
end