# Restaurant Inventory Management System

This is a Ruby on Rails application for managing a restaurant's inventory and menu. It includes functionalities for adding, editing, and removing products and categories, user authentication, and an interface for customers to view the menu.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Follow these instructions to set up the project on your local machine.

## Prerequisites

- Ruby 2.7 or higher
- Rails 6 or higher
- PostgreSQL or SQLite
- ImageMagick or GraphicsMagick (for image processing)

## Installation

1. **Clone the repository:**

    ```sh
    git clone https://github.com/vitorsg27/restaurant-menu.git
    cd restaurant-menu
    ```

2. **Install the gems:**

    ```sh
    bundle install
    ```

3. **Set up the database:**

    ```sh
    rails db:create
    rails db:migrate
    ```

4. **Run the server:**

    ```sh
    rails server
    ```

5. **Open your browser and navigate to:**

    ```
    http://localhost:3000
    ```

## Usage

### Admin Panel

To access the admin panel, navigate to `/admin`:

- Add, edit, and delete categories.
- Add, edit, and delete products.

### User Authentication

- Sign up
- Log in
- Edit account details
- Change password

### Menu

- View the list of categories
- View the products within a category

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
