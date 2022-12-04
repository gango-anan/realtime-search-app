# README

<a name="readme-top"></a>

<div align="center">
  <br/>

  <h3><b>Real Time Article Search Engine</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Real Time Article Search Engine] <a name="about-project"></a>

> Real Time Article Search Engine is a realtime search engine that allows users to search for articles and receive search results of their articles in real time. The application helps to keep track of the searches and shows the users the most trending articles based on the number of times a particular article was searched.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Describe the tech stack and include only the relevant sections that apply to your project.

<details>
  <summary>Front-end</summary>
  <ul>
    <li><a href="https://stimulus.hotwired.dev/">Stimulus</a></li>
    <li><a href="https://stimulus.hotwired.dev/">Hotwire</a></li>
    <li><a href="https://stimulus.hotwired.dev/">Turbo</a></li>
    <li><a href="">Vanilla CSS</a></li>
    <li><a href="">HTML(blended with erb)</a></li>
  </ul>
</details>

<details>
  <summary>Back-end</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/">Ruby on Rails 7</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Real time search]**
> The application has a realtime search feature which helps show the user search results based on partial search input as the user inputs the data to be searched.
- **[Records on complete searches]**
> The user completes inputing the complete title of the article which is the search data that the application receives, the application returns and article that matches the exact search input.
- **[Analyses the search history]**
> The applictaion analyses the search history and displaces the history as trending articles based on the number of times the articles were searched. The most searched article comes first.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://realtime-search-app.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

```
In order to run this project,
Make sure you have the following dependencies installed:
Ruby 3.1.3
yarn(latest version)
PostgreSQL(latest version)
Ruby on Rails 7.0.4
```

### Setup

Clone this repository to your desired folder, eg my-folder
  cd my-folder
  git clone https://github.com/gango-anan/realtime-search-app.git


### Install

Install this project with:
```
  In the folder where you cloned the repository
  open terminal and run the folloing commands
  cd realtime-search-app
  bundle install
  yarn install
```

### Usage

To run the project:

### First Initialize the project
To inialize the project run the following commands

```
bin/rails db:create
bin/rails db:migrate

```

### Run tests

To run tests, run the following command:

```
    rspec
```
When all the tests pass you can proceed and run the application

### Run the application

```
run rails server
open the application in the browser by following the link http://localhost:3000
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Galiwango Ananiya**

- GitHub: [@gango_anan](https://github.com/githubhandle)
- Potfolio: [Portfolio](https://galiwango-ananiya.netlify.app/)
- LinkedIn: [LinkedIn](https://linkedin.com/in/galiwango-ananiya/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Add capability to update the Tranding articles section dynamically as the search results are updated.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/gango-anan/realtime-search-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please the respository and share some ideas on how to improve it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...
Emil Hajric for seeing me as a potential candidate to join the team

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
