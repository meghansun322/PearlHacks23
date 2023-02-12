# College Wallet - Pearl Hacks 2023

## Inspiration
We realized that as college students, a lot of us do not know much about financial literacy, or even just about efficiently managing our money. In addition, a gender gap exists when it comes to financial literacy. According to the U.S Department of Education, “ 3.8 million adult American women have a “below basic” level of financial literacy”. Money and personal finance is often considered taboo; with this, women and gender minorities are less likely to learn about personal finance, invest, etc. Because of this, we chose to implement identity-specific communities to empower women and non-binary people to learn about personal finance.

## What it does
Our app has four different sections: a forum, budgeting, resources, and a profile. The profile section allows users to include general information about themselves in order to make it easier to connect with and get to know other students. The forum section is the medium where students can connect with each other and post about budgeting tips, cool resources they’ve found, etc. It provides a way for people to join various communities depending on what they are interested in or how they identify, and provides a safe space where students feel comfortable and supported. The budget section has a monthly budget calculator, where students can input their budget for different categories (tuition, housing, transportation, food, etc.), and can see the total amount they should be spending each month compared to the actual amount they spend. The resources section has links to different financial resources that can be useful for students, and they are organized by category to streamline the user experience.

## How we built it
We built our project with XCode and SwiftU/SwiftI. We structured our code using the MVVM (Model View View-Model) architecture. The data for our application is decoded from a JSON. The JSON is structured in a schema that we would use when communicating with a database. 

## Challenges we ran into
Most of us were not very experienced with iOS app development, so it was a bit of a learning curve for us coding with SwiftUI and navigating through XCode. There was quite a bit of Googling we had to do throughout our development to figure out syntax and different commands that we would need to use, but we also had to do a fair amount of research, especially for the resources page, to figure out what financial literacy tools and information would be best for college students.

In addition, we ran into issues while maintaining the state of the objects we use when switching views. This forced us to carefully think about how we want to structure the data and how we update it. Ultimately, we used the MVVM architect to help organize and maintain the state of application. 

## Accomplishments that we're proud of
We’re proud of the fact that even though we used a mostly new-to-us tech stack, we were able to add a lot of features to our app. Our main goal was to bring the college community together to discuss financial literacy, so we are proud of the extensive functionality of our forums tab. In this tab, the user can select from a number of community channels, or search for a certain community, to view that community’s forum posts. From there, the user can search for posts on a certain topic, view others posts, upvote and downvote posts, and reply to posts. We are proud of the way we structured the forum on the backend to make all of this possible!

Additionally, we are proud of College Wallet’s UI!

## What we learned
Most of us learned an immense amount about both iOS development through SwiftUI and financial literacy! Half our team had never used Swift before, but we learned a lot about the language’s structure, components, and styling techniques. Additionally, this was the first time that most of us worked on a group project using a fully git-enabled workflow. Through this experience, we gained a more detailed understanding of branching, pushing, and pulling.

## What's next for College Wallet
We set out with lofty goals for this app–to connect college students with the financial knowledge of their peers and the experts, and to bridge the financial literacy gap. While we are very proud of what we were able to accomplish in ~14 hours, there are some areas we would like to add onto. For example, we would like to add more functionality to the budgeting section, where the user would be able to put in their own personal budget, and they would be able to calculate how much they should be spending based on their income. Additionally, we would like to restructure the resources page so that it is searchable like the forums. We would also add functionality for the user to login, make an account, and edit their account. From a backend perspective, we hope to connect our application to a backend service such as Firebase. We already have the schema of our data outlined, so the transition to connecting to a backend would be made easier. Finally, ideally the users could also create their own communities, so they can customize the experience to what they’re looking for.
