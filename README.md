<div align="center">
  <img src="/app/assets/images/header-logo1.png" width="80px" height="80px" style="margin-bottom: -20px;">
  <h1><b>Seasons</b></h1>


This is an application where users can write articles on various seasons in life.
  
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/vanheaven-ui/seasons/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/vanheaven-ui/seasons/pulls)
[![Author](https://img.shields.io/badge/Github-Author-black)](https://github.com/vanheaven-ui)

</div>

## Index Page Screenshot

![Screenshot](/app/assets/images/screenshot-seasons.png)

## Content

<a text-align="center" href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ins">Installations</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#usage">Usage</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#app">App</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#tests">Testing</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#with">Built With</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Author</a>


## About <a name = "about"></a>
This project was a task by Microverse Inc. to build an application with the design by [Nelson Sakwa on behance](https://mir-s3-cdn-cf.behance.net/project_modules/disp/c498ab14554909.56285e690f20a.png). The application should accomplish certain tasks that include; a user should login by entering a username, a user should be able to write an article with a specific category(s) attached to it, users should be able to vote on the different categories.As an extra, I included a feature where users can leave comments on articles in this application.

## App Deployment
The built app was deployed to heroku by following the guide on [Heroku deployment for rails 6.X](https://devcenter.heroku.com/articles/getting-started-with-rails6). <br />
To view the live version of the app, [click here!](https://life-seasons.herokuapp.com/)

## Data Modelling
The Entity Relationship Diagram below was provided by microverse to guide the associations between the data models in this project.`
![ERD](/app/assets/images/ERD.jpg)

## 🔧 Built with<a name = "with"></a>

- ruby 2.7.0p0 (2019-12-25 revision 647ee6f091)
- Rails 6.0.3.3
- Bootstrap
- Gems/Dependencies
  - [x] rubocop (0.81.0)
  - [x] rspec-rails (4.0.1)
  - [x] capybara (3.33.0)
  - [x] shoulda-matchers (4.4.1)

## Usage <a name = "usage"></a>
To use the code in this repository, follow the steps in this section:

### 🔨 Preliquisites
 You should have the following packages installed on your computer inorder to run the code contained herein.

- Ruby version ``ruby 2.7.0p0 (2019-12-25 revision 647ee6f091)``. 
- Rails version ``Rails 6.0.3.3.``

### 🔨 Setup
First get a copy of the project on your computer:

- Clone or download the repository to a local directory on your computer by following the Github instructions at [Github clone/download repository](https://docs.github.com/en/enterprise/2.13/user/articles/cloning-a-repository).

### 🛠 Installing <a name = "ins"></a>
Once you have a local copy of the entire project on your computer,
If you don't meet the above preliquisites, then:

- Visit [Ruby Installations](https://www.ruby-lang.org/en/documentation/installation/) to install ruby version  2.7.0.
- Visit [Rails installations guide](https://guides.rubyonrails.org/v5.0/getting_started.html) to install rails version 6.0.3.3.
- Then run the following commands in the terminal.
  * Run ``bundle install`` in the terminal to install gems and their dependencies.
  * Run ``yarn install`` in the terminal to install packages in the package.json file.

###  App <a name = "app"></a>
With the installations above complete, you are set to use the code and view the application built in this repository. Follow these simple steps:

- Change directory into the directory where you cloned the repository. Forexample ``vanheaven@vanheaven-VirtualBox:~/Microverse-projects$ cd private-event.``
- Run ``rails db:create`` to create the database.
- Run ``rails db:migrate`` to update the database.
- Run ``rails s`` or ``rails server`` in the terminal to start the server.
- Once the server starts(Might take about 3-5 minutes), you can access the application by typing localhost:3000 in your browser and striking ``Enter``.

## Testing <a name = "tests"></a>
The tests in this repository were written using Rspec, shoulda-matchers, and capybara. So to run these tests successfully on your computer, follow the steps below;
* Crosscheck to make sure that your Gemfile has _**rails-rspec**_ in the development block and _**capybara**_ in the test block. See this example:
   ```<pre>
    group :development do
      gem 'listen', '~> 3.2'
      gem 'web-console', '>= 3.3.0'
      gem 'database_cleaner'
      gem 'rspec-rails'
      gem 'spring'
      gem 'spring-watcher-listen', '~> 2.0.0'
    end

    group :test do
      gem 'capybara', '>= 2.15'
      gem 'selenium-webdriver'
      gem 'webdrivers'
    end
 * The guide on [SettingUp RSpec and Capybara](https://madeintandem.com/blog/setting-up-rspec-and-capybara-in-rails-5-for-testing/) was followed to set up Rspec and Capybara.
 * Then run ``rspec`` in the terminal.

## ✒️  Authors <a name = "author"></a>

👤 **Mworekwa Ezekiel**

- Github: [@vanheaven-ui](https://github.com/vanheaven-ui)
- Twitter: [@MworekwaE](https://twitter.com/MworekwaE)
- Linkedin: [@linkedin](https://www.linkedin.com/in/vanheaven/)
- Email: [ezekiel](mailto:vanheaven6@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

- To create an issue, visit the [issues page](https://github.com/vanheaven-ui/events/issues) and create a new issue.
- To contribute to the code base, follow the steps below:
  1. Fork this repository to your remote respository by clicking the Fork button in this repository.
  2. Clone this repository to a directory on your computer by following Github guidelines.
  3. Change directory into the directory where you cloned this repository to.
  4. Open the directory using your favorite editor.
  5. Create a feature branch off the develop branch.
  5. Make and commit the nuanced code.
  6. Open a pull request describing the improvements made
And your reward awaits in heaven.


## 👍 Show your support

Give a ⭐️ if you like this project!

## :clap: Acknowledgements
[Microverse specifications](https://www.notion.so/Lifestyle-articles-b82a5f10122b4cec924cd5d4a6cf7561#e52fab8f5c874cb9853328caef637425)

