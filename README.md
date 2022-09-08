![](./app/assets/images/logo.png)

# Demo

https://spendless-rails.herokuapp.com/

# Spendless app

> The Spendless app keeps track of all your spends by groups, expenses, and show you the total by group. It will allow you to save categories of spends, keep track of what you spent, create expenses, and generate the total based on what you have in that category.

## Built With

- Ruby on Rails
- PostgreSQL
- devise
- cancancan

### Getting Started

To get a local copy up and running follow these simple steps:

### Prerequisites

- Ruby ruby-3.1.2 installed
- PostgreSQL dbms running

### Setup

- Open your terminal and navigate to the folder you would like to save the project.

- Type these commands into the terminal:

```
git clone https://github.com/rega1237/budget-app
cd budget-app
bundle install
```

- You will need to configure your  `application.yml` file before you install and run the project. The `application.yml` file contains environment variables needed to deploy the webpage. You can find this file in the folder config/application.yml. There is a commented `application_example.txt` file you can use as a guide to configure your own.

- Edit file application.yml

  - Provide the values for the variables
    - DATABASE_HOST
    - DATABASE_USER
    - DATABASE_PASSWORD

- Type this commands into the terminal:

```
rails db:create
rails db:reset
```

### Run application

- Type this command into the terminal:

```
rails server
```

- Open your web browser at [http://127.0.0.1:3000/](http://127.0.0.1:3000/)

### Testing

- Type this command into the terminal:

```
rspec
```

## Author

👤 **Rafael E. Guzman Arias**

- GitHub: [@rega1237](https://github.com/rega1237)
- LinkedIn: [Rafael E. Guzman Arias](https://www.linkedin.com/in/rafael-eduardo-guzman/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/) for the motivation.

## 📝 License

This project is [MIT](./MIT.md) licensed.