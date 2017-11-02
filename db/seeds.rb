require 'random_data'

# Create Posts
50.times do
# #1
  Post.create!(
# #2
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
1.times do
Post.create!(
# #2
  title:  "this wasnt that hard",
  body:   "really, how much did you want to test me?"
)
end
posts = Post.all

# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end
2.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: "simple replacement teaches something at least."
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
