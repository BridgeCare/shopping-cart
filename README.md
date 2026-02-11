# Shopping Cart

A Rails 8.1 application with a Vue 3 frontend powered by Vite.

## Prerequisites

- Ruby 3.4.7
- Node.js (for Vite and npm packages)
- SQLite3

## Setup

Clone the repo, then install dependencies and prepare the database:

```bash
bundle install
npm install
bin/rails db:prepare
```

Or use the setup script which does all of the above and starts the server:

```bash
bin/setup
```

## Running the app

```bash
bin/dev
```

This starts both the Rails server (http://localhost:3000) and the Vite dev server (port 3036) via foreman.

## Tests

```bash
bundle exec rspec
```
