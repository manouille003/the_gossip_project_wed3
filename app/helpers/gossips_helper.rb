module GossipsHelper
    def generate_card(gossip)
        content_tag :div, class: 'card' do
          content_tag(:h3, gossip.title, class: 'card-title') +
          content_tag(:p, gossip.content, class: 'card-content') +
          content_tag(:small, "Posted on: #{gossip.created_at.strftime('%d/%m/%Y')}", class: 'card-date')
        end
      end
end
