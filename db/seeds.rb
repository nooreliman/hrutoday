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

post_angry = Post.new(
  title: "driving to slow",
  content: "Every one has to have some complaint in regards to this subject. One day when I was leaving my house heading to town I see a small Toyota truck coming out of the drive way of a neighbor’s yard. He is 5 drive ways down. He waits and then pulls out just in front of me, causing me to break so I don’t hit the jackass. Then he proceeds to drive at 15 miles an hour talking to the guy with him, point out the window at this and that. There was no one behind me, he could have waited till I passed, but no. For half a mile I had to follow the jackass, between oncoming traffic, sharp turns, his swerving all over and speed bumps I could not pass him. Man was I happy when he turned off and I could go 45 , get to town before I shriveled and died.",
  status: "true",
)

post_angry.forum = forum_angry
post_angry.user = john
post_angry.save!

post_angry1 = Post.new(
  title: "green light hold up",
  content: "Arrived at a green light with a long line of cars. The lane wasn’t moving. Waited. Still not moving. If the lane was moving, then it was really slow. Then the light turned red. wtf? What the fuck was the hold up? It would be less infuriating if I knew.",
  status: "true",
)

post_angry1.forum = forum_angry
post_angry1.user = paul
post_angry1.save!

post_angry2 = Post.new(
  title: "How to stop being angry?",
  content: "I look calm on the surface but boiling right below it. I don't need a reason to go from cold to hot. I feel like people are to blame for me being unhappy. My ex girlfriend who constantly pushed events even though she knew I had to focus on my study first and then think how we will meet. My father who sold flat that should have been mine not long before my grandmother was ill with cancer. My friend who never understood where I was coming from. My other mate told me I am week and that was not the case. I am working hard to finish study , get a good job and finally start being proud of my accomplishment. That's all I want. It is hard to be angry but it comes out of me .I pray to God. I hope I change.",
  status: "true",
)

post_angry2.forum = forum_angry
post_angry2.user = george
post_angry2.save!

post_angry3 = Post.new(
  title: "That doesn't make sense",
  content: "If I don't like it then I don't like it Black and white, You can't force people's to do something that they don't like it from speaking your voice and action, vice versa, etc. If I don't like dogs then you can not force on me and preach being open and tolerance over people's opinion.
            That pisses me off having those type of people's for example like vash12349 and Jessi Nigri. I hate those people's with a passionate.",
  status: "true",
)

post_angry3.forum = forum_angry
post_angry3.user = george
post_angry3.save!

post_angry4 = Post.new(
  title: "I'm Mad",
  content: "I been dealing issue and having frustration anger toward small thing to big thing,and i want to release some anger.I get very anger if i don't understand or people's don't understand me and how i am imperfect but i want to very perfect like a god or king,I don't wanna make mistake or people's get the wrong the wrong ideas.
            I'm angry that i am not perfect and have fault in myself.I have anger over myself on how i make mistake,certain thing repeat itself and how's i don't understand some people's logical, for ex. a person cussed someone out then later on their apologizes for it or trying to be nice. that's when i lose it because in my mind Hello,you just cussed them out and now you wanna be like that. That's what i don't get people's.
            This is my rant(My belief and Opinion)",
  status: "true",
)

post_angry4.forum = forum_angry
post_angry4.user = george
post_angry4.save!


post_scared = Post.new(
  title: "I'm so scared",
  content: "The week before last the world was pretty great. I was loving my job, walking every day when I got home and planning fun things to do.",
  status: "true",
)

post_scared.forum = forum_scared
post_scared.user = john
post_scared.save!

post_scared1 = Post.new(
  title: "Scared/Anxious of the future/current state of the world",
  content: "Hi everyone this is my first post here. I'm seeing a psychologist but I need some extra help. The current state of the world has me feeling extremely anxious. Im terrified that i won't have a future, i am feeling very hopeless. With the current pandemic, climate change and all the recent news my anxiety is unbearable.",
  status: "true",
)

post_scared1.forum = forum_scared
post_scared1.user = paul
post_scared1.save!

post_scared2 = Post.new(
  title: "Anyone Else Scared of Seagulls?",
  content: "Does anyone else find them really annoying? Recently i went to around the shopping area and then bought a sandwich and ate outside. I see those little brown tweety bird and then toss bread at it and i see that bird is eating it in pieces and pieces.",
  status: "true",
)

post_scared2.forum = forum_scared
post_scared2.user = george
post_scared2.save!

post_scared3 = Post.new(
  title: "I am very scared that I won't find a job post PhD",
  content: "I am in possibly the worst place I have been in my life. I regret a lot of things. I regret ever starting PhD, I regret not making more effort in both my PhD and networking aspects. I accept responsibility for my mistakes but it doesn't make my predicament any easier. Any words of advice? Sorry for rambling.",
  status: "true",
)

post_scared3.forum = forum_scared
post_scared3.user = ringo
post_scared3.save!

post_scared4 = Post.new(
  title: "Have you ever been scared or nervous when you recieve a reply on your post?",
  content: "I have...well always, when I post something on forums like Do you think Asians are better than us? I got caught to an argument with a 40 year old there (I think he's a 40 year old cause it says it in his thing...) about people being beautiful and he called me a liar on what I believe and the other time I told this guy to be nice with the kid, but he went and snapped something like replying teddy bears and cookies...",
  status: "true",
)

post_scared4.forum = forum_scared
post_scared4.user = sarah
post_scared4.save!

post_confused = Post.new(
  title: "I am confused",
  content: "I have a friend that that i like really much and i feel like she gives hints of liking me too, but she says she likes someone else. Am I just overthinking and making myself confused?",
  status: "true",
)

post_confused.forum = forum_confused
post_confused.user = john
post_confused.save!

post_confused1 = Post.new(
  title: "I feel like I'm lost in life",
  content: "Hello everyone! I've never posted on forums but now I'm really desperate and I just wanna tell my story maybe it will help somehow. I'm 26 and lately I feel like my whole world is collapsing. Almost 1 year ago, after the lockdown ended, I decided to quit my job because I was miserable (very low payment, bad working conditions and bad employee treatment ) and I thought that I'll find another one very quickly. I started to apply to different jobs (national and international) but no response from anyone. Months were passing by and still nothing.",
  status: "true",
)

post_confused1.forum = forum_confused
post_confused1.user = paul
post_confused1.save!

puts "6 Posts created"
