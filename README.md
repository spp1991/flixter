# Flixter 

A two-sided video-streaming marketplace allowing tutors to provide lessons to students for a price or even free. It features credit card payment capabilities, user role management, advanced UI and UX, and advanced database relationships, which is similar to other platforms like Udemy.

Functionalities include:
- Enabling individuals to create courses and uploading course contents (image/videos/text) for students to refer
- Allowing course creators to change the order of course contents
- Allowing students to view the course and enroll 
- Integration of feature to pay course fee via credit card 

[Try it yourself](https://flixter-sunny-patel.herokuapp.com/) 


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You will need to setup Vagrant environment to run the application on local machine. To find the installation instructions for your OS, visit :

```
https://github.com/FirehoseProject/firehose-vagrant-rails5
```
### Installing

Initiate the vagrant environment.

Git clone the repository to your local machine in the src folder :

HTTPS:
```
$ git clone https://github.com/spp1991/flixter.git
```

SSH:

```
$ git clone git@github.com:spp1991/flixter.git
```

Open application folder created by git clone command:

```
$ cd flixter
```

Install all the gems used in application:

```
$ bundle install
```

Install the application database and create all the tables:

```
$ rails db:create
$ rails db:migrate
```

You will then be able to start the app locally by runnning:

```
$ rails server -b 0.0.0.0 -p 3000
```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Web framework
* [PostgreSQL](https://www.postgresql.org/) - Database
* [HTML5](https://en.wikipedia.org/wiki/HTML5) - Web markup language
* [CSS3](http://www.css3.info/) - Webpage Style Sheet language
* [Bootstrap](https://getbootstrap.com/) - CSS Framework
* [Javascript](https://www.javascript.com/) - Web Programming language
* [jQuery](https://jquery.com/) - Javascript Framework
* [Amazon Web Service](https://aws.amazon.com/) - Cloud Storage Platform
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave), [Fog-aws](https://github.com/fog/fog-aws) - Ruby gems


## Home Page
<img src="screenshot-home.png" alt="Screenshot Home">

## Course Listing Page (Administrator)
<img src="Screenshot-course-administrator.png" alt="Course Page Administrator">

## Course Page (Student)
<img src="screenshot-course-student.PNG" alt="Course Page Student">

## Lesson Page (Student)
<img src="screenshot-lesson-page.PNG" alt="Student Lesson Page">

## Payment Page (Student)
<img src="stripe-payment-page.PNG" alt="Payment Page">
