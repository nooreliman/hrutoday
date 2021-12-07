puts "Destroying data"

User.destroy_all
Forum.destroy_all
Mood.destroy_all
Comment.destroy_all
Post.destroy_all
UserMood.destroy_all
AffirmationMessage.destroy_all
Notification.destroy_all

puts "Creating users"

user = User.new(
  username: "msjdtd",
  email: "msjdtd@gmail.com",
  password: "punker77",
  age: 18,
  photo: ""
)

user.save!

user_one = User.new(
  username: "mysterygenuis",
  email: "mysterygenuis@gmail.com",
  password: "password123",
  age: 21,
  photo: ""
)

user_one.save!

puts "Users created"

puts "Creating moods"

mood_happy = Mood.new(
  name: "Happy",
  image: ""
)

mood_happy.save!

mood_sad = Mood.new(
  name: "Sad",
  image: ""
)

mood_sad.save!

mood_angry = Mood.new(
  name: "Angry",
  image: ""
)

mood_angry.save!

mood_scared = Mood.new(
  name: "Scared",
  image: ""
)

mood_scared.save!

mood_love = Mood.new(
  name: "Love",
  image: ""
)

mood_love.save!

mood_confused = Mood.new(
  name: "Confused",
  image: ""
)

mood_confused.save!

puts "6 Moods created"

puts "Creating forums"

forum_happy = Forum.new(
  description: "Happy"
)

forum_happy.mood = mood_happy
forum_happy.save!

forum_sad = Forum.new(
  description: "Sad"
)

forum_sad.mood = mood_sad
forum_sad.save!

forum_angry = Forum.new(
  description: "Angry"
)

forum_angry.mood = mood_angry
forum_angry.save!

forum_scared = Forum.new(
  description: "Scared"
)

forum_scared.mood = mood_scared
forum_scared.save!

forum_love = Forum.new(
  description: "Loved"
)

forum_love.mood = mood_love
forum_love.save!

forum_confused = Forum.new(
  description: "Confused"
)

forum_confused.mood = mood_confused
forum_confused.save!

puts "6 Mood Forums created"

puts "Creating posts"

post = Post.new(
  title: "I am happy",
  content: "Blehhhhh",
  status: "true"
)

post.forum = forum_happy
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
