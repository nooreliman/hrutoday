puts "Destroying data"

User.destroy_all
Comment.destroy_all
Post.destroy_all

puts "Creating user"

user = User.create!(
  username: "msjdtd",
  email: "msjdtd@gmail.com",
  password: "punker77",
  age: 18,
  photo: ""
)

puts "User created"

puts "Creating mood"

mood = Mood.create!(
  name: "Happy",
  image: ""
)

puts "Mood created"

puts "Creating forum"

forum = Forum.new(
  description: "Happy",
)

forum.mood = mood
forum.save!

puts "Forum created"

puts "Creating post"

post = Post.new(
  title: "I am happy",
  content: "Blehhhhh",
  status: "true"
)

post.forum = forum
post.user = user
post.save!

puts "Post created"

puts "Creating comment"

comment = Comment.new(
  content: "How are you?",
  status: "true"
)

comment.post = post
comment.user = user
comment.save!

puts "Comment created"
