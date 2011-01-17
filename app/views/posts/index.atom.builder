atom_feed do |feed|
  feed.title("David P's test blog.")
  feed.updated(@posts.first.created_at) #is @posts.first the most recent post (chronologically)?
  
  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.body, :type => 'html')
      entry.author { |author| author.name("David Prince") }
    end
  end
end
