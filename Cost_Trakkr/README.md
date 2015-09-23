# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Cost Trakkr

###GA WDI 15 London - Project 2

#### A simple app to track user's bills and debts for group events!

This beautiful app can track payments for two things:

1. Payments for multiple users to a new, or existing event. 
2. Payments between users who want to lend each other money, or repay previous debts.

![](app/assets/images/screenshot1.jpg)

####Approach / How it works

1. The user reaches the Homepage, and has to select if they want to track payments for an individual user, or for an event.
2. From their selected option they then either create a new Event/User, or choose from a list of existing users already added to the databse.
3. If an existing Event/User is selected it will display all the data about that entry, including things like Name, Budget, Debts, Histroy, etc.
4. Everything can be modified and changed at any time, and validation helps to reduce user error.
5. A payment can then be made to a User, or an Event.
6. All payments will be tracked and displayed to make it beautifully simple to keep a track of who has paid, and how much.
7. For an Event - All payments will be deducted from the overall bill.
<br>
For a User - All payments will be deducted from their debts.   

####The build

* Ruby on RAILS.
* HTML 5, CSS, SCSS, Gems, and External Stylesheets were used to create this app. 
* Various Google Web Fonts 'Arvo'.


#### Problems & Challenges

The main challenge I faced building this app was coping with the sheer numnber of files created when using RAILS, and the fact that they all rely on different programming languages. Working with, and effectively navigating through these files was new to me, however very rewarding and 'clean' once I had developed a process.