require 'random_data'

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
@topics = Topic.all

def posttest(num,title,body)
  num.times do
    Post.create!(
      topic:  @topics.sample,
      title:  title,
      body:   body
    )
  end
end

posttest(50,RandomData.random_sentence,RandomData.random_paragraph)
posttest(1,"this wasnt that hard","really, how much did you want to test me?")

 # Create Sponsored Posts
5.times do
  SponsoredPost.create!(
    topic: @topics.sample,
    title:  RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 100
  )
end
sponsored_posts = SponsoredPost.all

def commenttest(boop,boody)
  boop.times do
    Comment.create!(
      post: Post.all.sample,
      body: boody
    )
  end
end

commenttest(100,RandomData.random_paragraph)
commenttest(2,"simple replacement teaches something at least.")

# ah so the find or create method is like expansion of the first called
# parameter if the second doesnt exist
# that has not been created yet but will not touch the ones that have
# been created.
# the next six lines of code test to ensure that a comment is not created if it
# existed previously
2.times do
  Comment.find_or_create_by!(
    post: Post.all.sample,
    body: "simple replacement teaches something at least."
  )
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{SponsoredPost.count} sponsored posts created"
# a seeds file essentially prepopulates data into your app so that the variables
# can execute efficiently as if they were information the users would put in .
