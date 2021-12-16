puts "Destroying data"

User.destroy_all
Forum.destroy_all
Mood.destroy_all
Comment.destroy_all
Post.destroy_all
AffirmationMessage.destroy_all
Notification.destroy_all

puts "Creating users"

sarah = User.new(
  username: "sarah",
  email: "sarah@gmail.com",
  password: "123123",
  age: 18,
  photo: "https://avatars.dicebear.com/api/croodles/mario.svg",
)

sarah.save!

chloe = User.new(
  username: "chloe",
  email: "chloe@gmail.com",
  password: "123123",
  age: 21,
  photo: "https://avatars.dicebear.com/api/croodles/jayz.svg",
)

chloe.save!

john = User.new(
  username: "john",
  email: "john@gmail.com",
  password: "123123",
  age: 28,
  photo: "https://avatars.dicebear.com/api/croodles/cool.svg",
)

john.save!

paul = User.new(
  username: "paul",
  email: "paul@gmail.com",
  password: "123123",
  age: 18,
  photo: "https://avatars.dicebear.com/api/croodles/mario.svg",
)

paul.save!

george = User.new(
  username: "george",
  email: "george@gmail.com",
  password: "123123",
  age: 21,
  photo: "https://avatars.dicebear.com/api/croodles/jayz.svg",
)

george.save!

ringo = User.new(
  username: "ringo",
  email: "ringo@gmail.com",
  password: "123123",
  age: 28,
  photo: "https://avatars.dicebear.com/api/croodles/cool.svg",
)

ringo.save!

puts "Users created"

puts "Creating moods"

mood_happy = Mood.new(
  name: "Happy",
  image: "happy3.png",
  color: "#bfd8e5",
)

mood_happy.save!

mood_sad = Mood.new(
  name: "Sad",
  image: "sad3.png",
  color: "#cbc6d6",
)

mood_sad.save!

mood_angry = Mood.new(
  name: "Angry",
  image: "angry3.png",
  color: "#dea6a6",
)

mood_angry.save!

mood_scared = Mood.new(
  name: "Scared",
  image: "scared3.png",
  color: "#e7ebbc",
)

mood_scared.save!

mood_love = Mood.new(
  name: "Love",
  image: "love3.png",
  color: "#e1bddb",
)

mood_love.save!

mood_confused = Mood.new(
  name: "Confused",
  image: "confused3.png",
  color: "#b5dad1",
)

mood_confused.save!

puts "6 Moods created"

puts "Creating forums"

forum_happy = Forum.new(
  description: "Happy",
  context: "Share the good news!",
)

forum_happy.mood = mood_happy
forum_happy.save!

forum_sad = Forum.new(
  description: "Sad",
  context: "Unpack your emotions",
)

forum_sad.mood = mood_sad
forum_sad.save!

forum_angry = Forum.new(
  description: "Angry",
  context: "Release your frustrations",
)

forum_angry.mood = mood_angry
forum_angry.save!

forum_scared = Forum.new(
  description: "Scared",
  context: "Share your fears - you're not alone",
)

forum_scared.mood = mood_scared
forum_scared.save!

forum_love = Forum.new(
  description: "Loved",
  context: "What are you grateful for today?",
)

forum_love.mood = mood_love
forum_love.save!

forum_confused = Forum.new(
  description: "Confused",
  context: "Talk it out, you might find clarity!",
)

forum_confused.mood = mood_confused
forum_confused.save!

puts "6 Mood Forums created"

puts "Creating posts"

post_happy_one = Post.new(
  title: "What does happiness means to me",
  content: "Happiness means that I don't have to see my mother tailoring clothes at 3 a.m just to earn some money.  I don't have to see my father driving auto for my education.I can ensure my sibling's education.
            The bad times has taught me many things.
            Hard work, patience, persistent are the basic qualities I have learned from my parents. These are what happiness means to me now.",
  status: "true",
)

post_happy_one.forum = forum_happy
post_happy_one.user = john
post_happy_one.save!

post_happy_two = Post.new(
  title: "Babies",
  content: "Life changes when you welcome a new person into your life. Life changes when you realise a dream comes true. Life changes when you experience something inexplicable.
            For my husband and myself, this precious moment came twice in life.
            How lucky we are! The birth of our daughters.
            The moment my doctor showed me my first born, that unspeakable happiness.
            I was overjoyed to hold her and love her. She continues to bring us joy with her smile and innocence.",
  status: "true",
)

post_happy_two.forum = forum_happy
post_happy_two.user = sarah
post_happy_two.save!

post_happy_three = Post.new(
  title: "Little things in life",
  content: "My life is filled with joy. My wife. Sleeping as I write this post.
            Decades of love and life together. She is my love, best friend and soul mate. And she brings me joy.
            Our children. Our daughter will stop by soon. Our son we will see later this week.
            Our loves and thankfully now our best friends. And they bring me joy.",
  status: "true",
)

post_happy_three.forum = forum_happy
post_happy_three.user = george
post_happy_three.save!

post_happy_four = Post.new(
  title: "Challenge for you guys!",
  content: "Happiness is found in the simplest of things. If you are anything like me, sometimes life just gets to you and all you can do is take a step back and think of all the things that make you happy.
            Writing about what makes me happy always seems to counteract a bad day.
            I challenge you to write down a few things every day that makes you happy,
            and you will be surprised at all the simple things in life that can put a smile on your face!",
  status: "true",
)

post_happy_four.forum = forum_happy
post_happy_four.user = john
post_happy_four.save!

post_happy_five = Post.new(
  title: "My baby puppy!",
  content: "Recently adopted a little cute maltese and I have to say that he is a bundle of joy and he brings me happiness everyday!",
  status: "true",
)

post_happy_five.forum = forum_happy
post_happy_five.user = sarah
post_happy_five.save!

puts "Creating posts"
