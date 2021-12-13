puts "Destroying data"

User.destroy_all
Forum.destroy_all
Mood.destroy_all
Comment.destroy_all
Post.destroy_all
AffirmationMessage.destroy_all
Notification.destroy_all

puts "Creating users"

user = User.new(
  username: "msjdtd",
  email: "msjdtd@gmail.com",
  password: "punker77",
  age: 18,
  photo: "",
)

user.save!

user_one = User.new(
  username: "mysterygenuis",
  email: "mysterygenuis@gmail.com",
  password: "password123",
  age: 21,
  photo: "",
)

user_one.save!

puts "Users created"

puts "Creating moods"

mood_happy = Mood.new(
  name: "Happy",
  image: "happy.png",
  color: "#bfd8e5"
)

mood_happy.save!

mood_sad = Mood.new(
  name: "Sad",
  image: "sad.png",
  color: "#cbc6d6"
)

mood_sad.save!

mood_angry = Mood.new(
  name: "Angry",
  image: "angry.png",
  color: "#dea6a6"
)

mood_angry.save!

mood_scared = Mood.new(
  name: "Scared",
  image: "scared.png",
  color: "#e7ebbc"
)

mood_scared.save!

mood_love = Mood.new(
  name: "Love",
  image: "love.png",
  color: "#e1bddb"
)

mood_love.save!

mood_confused = Mood.new(
  name: "Confused",
  image: "confused.png",
  color: "#b5dad1"
)

mood_confused.save!

puts "6 Moods created"

puts "Creating forums"

forum_happy = Forum.new(
  description: "Happy",
  context: "Share the good news!"
)

forum_happy.mood = mood_happy
forum_happy.save!

forum_sad = Forum.new(
  description: "Sad",
  context: "Unpack your emotions"
)

forum_sad.mood = mood_sad
forum_sad.save!

forum_angry = Forum.new(
  description: "Angry",
  context: "Release your frustrations"
)

forum_angry.mood = mood_angry
forum_angry.save!

forum_scared = Forum.new(
  description: "Scared",
  context: "Share your fears - you're not alone"
)

forum_scared.mood = mood_scared
forum_scared.save!

forum_love = Forum.new(
  description: "Loved",
  context:"What are we grateful for today?"
)

forum_love.mood = mood_love
forum_love.save!

forum_confused = Forum.new(
  description: "Confused",
  context: "Talk it out, you might find clarity!"
)

forum_confused.mood = mood_confused
forum_confused.save!

puts "6 Mood Forums created"

puts "Creating posts"

post_happy = Post.new(
  title: "I am happy",
  content: "Blehhhhh",
  status: "true",
)

post_happy.forum = forum_happy
post_happy.user = user
post_happy.save!

post_sad = Post.new(
  title: "I am sad",
  content: "Blehhhhh",
  status: "true",
)

post_sad.forum = forum_sad
post_sad.user = user
post_sad.save!

post_angry = Post.new(
  title: "I am angry",
  content: "Blehhhhh",
  status: "true",
)

post_angry.forum = forum_angry
post_angry.user = user
post_angry.save!

post_scared = Post.new(
  title: "I am scared",
  content: "Blehhhhh",
  status: "true",
)

post_scared.forum = forum_scared
post_scared.user = user
post_scared.save!

post_love = Post.new(
  title: "I am loved",
  content: "Blehhhhh",
  status: "true",
)

post_love.forum = forum_love
post_love.user = user
post_love.save!

post_confused = Post.new(
  title: "I am confused",
  content: "Blehhhhh",
  status: "true",
)

post_confused.forum = forum_confused
post_confused.user = user
post_confused.save!

puts "6 Posts created"

puts "Creating comment and reply"

comment_one = Comment.new(
  content: "How are you?",
  status: "true",
)

comment_one.post = post_happy
comment_one.user = user
comment_one.save!

reply_one = Comment.new(
  content: "There's been better days but I'm still coping!",
  status: "true",
)

reply_one.post = post_happy
reply_one.user = user_one
reply_one.save!

reply_one.reply_to(comment_one)

puts "Comment and reply created"

puts "Creating affirmation messages"

affirm = AffirmationMessage.new(
  message: "Don't know what went down but I'm so proud of you achieving big things!",
)

affirm.user = user
affirm.mood = mood_happy
affirm.save!


affirm_sad = AffirmationMessage.new(
  message:  "Remember to take a break if you're overwhelmed!",
)

affirm_sad.user = user_one
affirm_sad.mood = mood_sad
affirm_sad.save!

affirm_sad_one = AffirmationMessage.new(
  message:  "You got this!",
)

affirm_sad_one.user = user_one
affirm_sad_one.mood = mood_sad
affirm_sad_one.save!

affirm_sad_two = AffirmationMessage.new(
  message:  "I am so proud of you! Have a great day ahead",
)

affirm_sad_two.user = user_one
affirm_sad_two.mood = mood_sad
affirm_sad_two.save!

affirm_sad_three = AffirmationMessage.new(
  message:  "You can do this! I am sure of it.",
)

affirm_sad_three.user = user_one
affirm_sad_three.mood = mood_sad
affirm_sad_three.save!

affirm_sad_four = AffirmationMessage.new(
  message:  "You are not alone in this. Heads up!",
)

affirm_sad_four.user = user_one
affirm_sad_four.mood = mood_sad
affirm_sad_four.save!

puts "Affirmation messages created"
