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

post_sad_1 = Post.new(
  title: "Think I'm done...",
  content: "Hello all. Not looking for any responses, but I just need to vent in a safe place.
  I'm in my mid-40s, and currently working in a job that requires high-volume and repetitive processing. Up to now, I haven't minded that but it is not what I was brought into the company for - I was brought in as a temp to work on a large remediation project. However, priorities within the company have changed and I'm now doing this other work. I was also working in the office largely on my own during lockdown and have struggled coping with people coming back in, surrounding where I work and making a lot of noise. And quite recently I have been blocked on Instagram and had a Facebook friend request rejected by a colleague who up to now I had no problem working with and thought the same back.
  Also, since my birthday in early September, my father has been in hospital with lung and knee issues. We know he will still be there for Christmas and because of COVID restrictions imposed by the hospital, my mum and I are not allowed to visit him. Doesn't help that his memory loss is getting worse and that even though we have asked the hospital to provide updates as to what treatment is being given, we have not received anything from them - we only find out by asking ourselves. I have been trying to remain strong for my mum as she is also stressed by what is going on with Dad, but I am really tired now and losing the will to go on.
  So, a job I am not enjoying, people I work with have unknown issues with me that make me anxious and nervous about what will happen next, family problems and a total lack of direction about what I want to do or even if I want to do anything. I hate to say this but waking up each day is a huge struggle, going to work is a huge struggle and being a good son is a huge struggle - I think I'm done and am about to cut my losses on a lot of those things - even life itself. To be brutally honest, other than my family I'm pretty sure I won't be missed or remembered fondly, only by people who want something from me rather than just be happy with having me.
  Not a way to live a life, is it?",
  status: "true",
)

post_sad_1.forum = forum_sad
post_sad_1.user = john
post_sad_1.save!

post_sad_2 = Post.new(
  title: "Drowning yet Breathing fine",
  content: "I'm not rly sure what to say, i'm just venting ig.
  I have struggled with Suicidal depression for almost half my life. I'm almost 20 and have been struggling with depression since I was 10 and have been suicidal since I was 13. Almost 7 years later and about 4ish years since all the bullying, harassment and exclusion has stopped since i left at the end of year 10 and my life is flourishing. I have finished 3 years studying something I love, started a job that i rly like and am surrounded by great people. So i am so F***ing angry that i still feel like i want to fall asleep and never wake up. I have literally almost everything good going for me in life and have so much to be thankful for but my default mood always goes right back to not wanting to be alive anymore. I'm surrounded by amazing people yet feel so disconnected from them and feel like they would be better off without me. I have never felt like I truly fit in anywhere and have never had a proper friend group that hand on my heart could say that I could depend on them.
  I hate myself so much and I see no reason why I do, but I also know exactly why. All I can see is how much I hurt people and make them feel uncomfortable because I find it very hard to read people and as a result, unintentionally cross boundaries all the time. I'm always interested in something else people are interested in and I feel like I just let everyone down all the time. In a weird way, I find it funny to call myself suicidal because I never actively planned to commit suicide, BUT I have hurt myself multiple times and thinking 'I'm doing this to punish myself but If it goes worse, just let it happen'. People keep seeing how I'm hurting physically and ask me what's wrong but I don't want to tell them because their lives are happy and I don't want to burden them with something they can't understand or control.
  My life is progressing so well and so quickly yet I feel so stuck and feel like I'm drowning and every breath I take feels like a sin. I won't actually do anything because I know how much it hurts people, but I cant seem to get better permenately regardless of meds and therapy. I just don't know what else to do.",
  status: "true",
)

post_sad_2.forum = forum_sad
post_sad_2.user = paul
post_sad_2.save!

post_sad_3 = Post.new(
  title: "The Guilt . Where does it come from.",
  content: "Hi and best wishes to everyone. I know that guilt is often associated with depression. Sometimes i get overwhelmed with it myself .Those feelings of constantly letting people down ,whether it be from not visiting or being able to help them when they ask for help with something or just not being available for a social gathering.It just seems especially hard at this time of year. I was just wondering about peoples similar situations and how they manage these feelings.I find it quite overwhelming at times.",
  status: "true",
)

post_sad_3.forum = forum_sad
post_sad_3.user = george
post_sad_3.save!

post_sad_4 = Post.new(
  title: "How to deal with derogatory comments in public",
  content: "Hi,
  I wish I didn't have to even think about this but I thought posting to a supportive forum might help me in dealing with this issue.
  I have red hair, I'm indifferent about it, but unfortunately years ago there was a certain show broadcast that featured high school students teasing a character with red hair. Since then, on occasion I've been called this term in public (most of the time by teenagers). I know that in a group people tend to be more confident and that it's not something they would say to my face one-on-one. I'm not in high school anymore (and when I was in high school it was never even any issue). Some people dismiss it as a joke, but I don't see the funny side.
  I'm conscious that there's far worse that happens to people but I think the senseless, immature throwaway remark, causes me to experience low-self confidence and self-esteem issues.
  I've never spoken to a therapist about it, it feels too embarrassing and wouldn't be taken seriously. I never react because I know that it wouldn't change anything but would like to know how to move on from future remarks.
  The reason I'm writing this now is because it happened tonight. I was just walking home after doing shopping and I heard someone at a table say it to me. Also, I've suffered from OCD in the past and half the time I don't know whether I actually heard someone say that or if I just imagined it.",
  status: "true",
)

post_sad_4.forum = forum_sad
post_sad_4.user = ringo
post_sad_4.save!

post_sad_5 = Post.new(
  title: "Help. I don’t know who I am supposed to be and feel lost",
  content: "Hello there I don’t usually do anything like this but I wanted to see if anyone has any advice for me. I am a 25 yr old who on the surface should have everything under control as I have a good job, good family yet I increasingly feel like I don’t know what makes me who I am and often feel down and flat when trying to find answers. I know people have much more reason to be depressed than someone like myself but I just constantly felt flat and lost searching for how I am supposed to be and what makes me who I am.
  I have been trying to find a partner which has been the source of countless rejection which is all part of it I know but often I’m left feeling like I’m quite a boring person with nothing really that interesting to tell anyone and I am confused as to how to act
  I’m usually a quiet natured person but I feel this incredible pressure that I can’t be like that and I am confused as to where I am at with my life
  it is difficult for me to put into words I guess it’s just a lost type of feeling of what my place is and who I am and I thought at 25 I might have an idea of this
  I know my post hasn’t given a great deal to go off but if anyone has experienced similar at my age I’d be glad to hear what approach you took
  thanks",
  status: "true",
)

post_sad_5.forum = forum_sad
post_sad_5.user = chloe
post_sad_5.save!



post_love_1 = Post.new(
  title: "She doesn’t care for it",
  content: "I’m dating a wonderful female but for some reason she doesn’t like the fact that I take pride in opening the door for her whether it’s via car door or walk in door. I would think that a lady would like for her man to do such a thing. What could be the reason that she doesn’t care for that?",
  status: "true",
)

post_love_1.forum = forum_love
post_love_1.user = john
post_love_1.save!

post_love_2 = Post.new(
  title: "Care package ideas?",
  content: "What are some thing you would throw in a care package to show someone who is going through a hard time that you love them? I would love ideas for any age. I like to give care packages often and would love new ideas.",
  status: "true",
)

post_love_2.forum = forum_love
post_love_2.user = paul
post_love_2.save!

post_love_3 = Post.new(
  title: "very thankful",
  content: "I took a moment to think about how grateful I am to have cilia (those itty bitty hairs) that line my airways trapping all those nasties that would make me sick",
  status: "true",
)

post_love_3.forum = forum_love
post_love_3.user = george
post_love_3.save!

post_love_4 = Post.new(
  title: "I am grateful for my awesome job, and the flexibility it brings.",
  content: "I started a fully remote job at an awesome company working with awesome people a few months ago.
  The work is good, the work environment is healthy. People care about each other and the work we do.
  The flexibility and support from my job allows me to take time for myself when I'm having a rough week or just need to step away from my desk and breathe in the outdoors for a few minutes. Nobody guilts me for that or tries to micromanage me like I've had in the past.
  It is so freeing to wake up each morning and know that I can give strength to my team and take strength from them depending on what I need.
  Even though I've never met these people in person, they matter as much to me as people I am able to see IRL.
  It's really nice to have something fulfilling to spend my time on.",
  status: "true",
)

post_love_4.forum = forum_love
post_love_4.user = ringo
post_love_4.save!

post_love_5 = Post.new(
  title: "Living In Gratitude",
  content: "A blind boy sat on the steps of a building with a hat by his feet. He held up a sign which read, 'I am blind, please help.'
  There were only a few coins in the hat, some spare change from folks as they hurried past.
  A man was walking by. He took a few coins from his pocket and dropped them into the hat. He then took the sign, turned it around, and wrote some words.
  Then he put the sign back in the boy’s hand so that everyone who walked by would see the new words. Soon the hat began to fill up. A lot more people were giving money to the blind boy.
  That afternoon, the man who had changed the sign returned to see how things were. The blind boy recognized his footsteps and asked, 'Were you the one who changed my sign this morning? What did you write?'
  The man said, 'I only wrote the truth. I said what you said but in a different way.' 
  I wrote, 'Today is a beautiful day, but I cannot see it.'
  Both signs spoke the truth. But the first sign simply said the boy was blind, while the second sign conveyed to everyone walking by how grateful they should be to see.
  When your life seems full of troubles, it seems difficult to maintain an attitude of gratitude, doesn’t it? All we see are our problems, like a blackened storm cloud casting a dark shadow over our lives.
  And the times when everything just seems to be going smoothly? We often take these precious moments for granted too, don’t we? Caught up in the bliss, comfort, and familiarity of it all, we can simply forget to be thankful.
  So what, then, is gratitude?
  Simply put, gratitude is a habit. It’s a way of looking at the world and all the good things in it with a feeling of appreciation, regardless of whether or not your current situation is to your liking.
  Gratitude is a heart-centered approach to being at peace with yourself and with all you have. When you practice this feeling of gratitude, it attracts even more things into your life for which to be grateful.
  Go ahead, try it out right now. What or who do you have in your life to be thankful for?",
  status: "true",
)

post_love_5.forum = forum_love
post_love_5.user = chloe
post_love_5.save!

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

post_scared5 = Post.new(
  title: "I'm not sure if I'm in the right job",
  content: "I have been working as a UI/UX designer for the past few months. I always thought that I was meant for a design role (ADM grad here) and that I found something I liked. However, soon enough the excitement ran out and I started feeling jaded at work. If this was my passion, how is it that I lost interest in a few months? 
  I think I'm interested in web dev now, what if the excitement dies again after a few weeks in the job? I'm 30 and it feels like other people have already found their calling but I'm still lost.",
  status: "true",
)

post_scared5.forum = forum_scared
post_scared5.user = sarah
post_scared5.save!

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

puts "Creating comment and reply"

comment_one = Comment.new(
  content: "Go for it OP, you're not even 30 yet! I'm still lost at 45 wishing I tried something new when I was younger. ",
  status: "true",
)

comment_one.post = post_scared5
comment_one.user = john
comment_one.save!

reply_one = Comment.new(
  content: "There's been better days but I'm still coping!",
  status: "true",
)

reply_one.post = post_scared5
reply_one.user = chloe
reply_one.save!

reply_one.reply_to(comment_one)

puts "Comment and reply created"

comment_two = Comment.new(
  content: "Go for it OP, you're not even 30 yet! I'm still lost at 45 wishing I tried something new when I was younger. ",
  status: "true",
)

comment_two.post = post_scared5
comment_two.user = paul
comment_two.save!

comment_three = Comment.new(
  content: "You don't hear it often but there are many others who are still figuring life out. I thought that I had no hobbies and passions but after a few years of therapy, I realised that it's because I'm too afraid to commit to something lol trying to pick up photography currently",
  status: "true",
)

comment_three.post = post_scared5
comment_three.user = george
comment_three.save!

puts "Creating affirmation messages"

affirm_happy_one = AffirmationMessage.new(
  message: "Don't know what went down but I'm so proud of you achieving big things!",
)

affirm_happy_one.user = john
affirm_happy_one.mood = mood_happy
affirm_happy_one.save!

affirm_happy_second = AffirmationMessage.new(
  message: "Good things take time",
)

affirm_happy_second.user = john
affirm_happy_second.mood = mood_happy
affirm_happy_second.save!

affirm_happy_third = AffirmationMessage.new(
  message: "Love who you",
)

affirm_happy_third.user = john
affirm_happy_third.mood = mood_happy
affirm_happy_third.save!

affirm_happy_four = AffirmationMessage.new(
  message: "Less expectations, more satisfaction",
)

affirm_happy_four.user = john
affirm_happy_four.mood = mood_happy
affirm_happy_four.save!

affirm_sad = AffirmationMessage.new(
  message: "Remember to take a break if you're overwhelmed!",
)

affirm_sad.user = paul
affirm_sad.mood = mood_sad
affirm_sad.save!

affirm_sad_one = AffirmationMessage.new(
  message: "You got this!",
)

affirm_sad_one.user = paul
affirm_sad_one.mood = mood_sad
affirm_sad_one.save!

affirm_sad_two = AffirmationMessage.new(
  message: "I am so proud of you! Have a great day ahead",
)

affirm_sad_two.user = paul
affirm_sad_two.mood = mood_sad
affirm_sad_two.save!

affirm_sad_three = AffirmationMessage.new(
  message: "You can do this! I am sure of it.",
)

affirm_sad_three.user = paul
affirm_sad_three.mood = mood_sad
affirm_sad_three.save!

affirm_sad_four = AffirmationMessage.new(
  message: "You are not alone in this. Heads up!",
)

affirm_sad_four.user = paul
affirm_sad_four.mood = mood_sad
affirm_sad_four.save!

affirm_angry_one = AffirmationMessage.new(
  message: "take a deep breath",
)

affirm_angry_one.user = paul
affirm_angry_one.mood = mood_angry
affirm_angry_one.save!

affirm_angry_two = AffirmationMessage.new(
  message: "focus on yourself, not others",
)

affirm_angry_two.user = paul
affirm_angry_two.mood = mood_angry
affirm_angry_two.save!

affirm_scared_one = AffirmationMessage.new(
  message: "don't be scared, you will be fine",
)

affirm_scared_one.user = paul
affirm_scared_one.mood = mood_scared
affirm_scared_one.save!

affirm_scared_two = AffirmationMessage.new(
  message: "it is okay to feel scared, but i believe you will overcome it!",
)

affirm_scared_two.user = paul
affirm_scared_two.mood = mood_scared
affirm_scared_two.save!

affirm_love_one = AffirmationMessage.new(
  message: "right people know your worth",
)

affirm_love_one.user = paul
affirm_love_one.mood = mood_love
affirm_love_one.save!

affirm_love_two = AffirmationMessage.new(
  message: "putting yourself first is not selfish, it's your priority",
)

affirm_love_two.user = paul
affirm_love_two.mood = mood_love
affirm_love_two.save!

affirm_confused_one = AffirmationMessage.new(
  message: "it is okay to not get have your life together all the time",
)
affirm_confused_one.user = paul
affirm_confused_one.mood = mood_confused
affirm_confused_one.save!

affirm_confused_two = AffirmationMessage.new(
  message: "It is fine to get lost along the way, you will eventually reach your goal.",
)
affirm_confused_two.user = paul
affirm_confused_two.mood = mood_confused
affirm_confused_two.save!

puts "Affirmation messages created"
