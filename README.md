# Flixter 

The application is a two-sided video-streaming marketplace, featuring credit card payment capabilities, user role management, advanced UI and UX, and advanced database relationships, which is similar to other platforms like Udemy.

Functionalities include:
- Enabling individuals to create courses and uploading course contents (image/videos/text) for students to refer
- Allowing course creators to change the order of course contents
- Allowing students to view the course and enroll 
- Integration of feature to pay course fee via credit card 


Technical details of the app is as follows :
Programming Language: Ruby, javascript, HTML5
Web/stylesheet Framwork : ruby on rails, bootstrap  
Database : postgresql
Gems : carrierwave, fog-aws
Cloud Storage Platform ; Amazon Web Service (AWS)

Note : Please execute commands to install all gems ('bundle install') and create/migrate database/tables('rails db:create , rails db:migrate') before git repository of this application is downloaded and used to run on local server 

To checkout the application, click [here](https://grammable-sunnypatel.herokuapp.com/) 

## Home Page
<img src="screenshot-home.png" alt="Screenshot Home">

## Course Listing Page (Administrator)
<img src="Screenshot-course-administrator.png" alt="Course Page Administrator">

## Course Page (Student)
<img src="screenshot-course-student.png" alt="Course Page Student">

## Lesson Page (Student)
<img src="screenshot-lesson-page.png" alt="Student Lesson Page">

## Payment Page (Student)
<img src="stripe-payment-page.png" alt="Payment Page">