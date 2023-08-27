# README

## Description

A basic GraphQL backend of authors and their quotes.

## Setup

Install dependencies and load dummy data to DB.

```bash
$ bundle install
$ rails db:setup
```

## Usage

This project has no frontend. Run the project and access `/graphiql` to make GraphQL queries.

To run the project:
```bash
$ rails s
```

Then navigate from your browser to http://127.0.0.1:3000 (it redirects to `/graphiql`).

### Example queries

Get a list of all authors:

```graphql
{
  authors {
    name
  }
}
```

Get quote with a given ID:
```graphql
{
  quote(quoteId: 1) {
    message,
    author {
      name
    }
  }
}
```

Get all quotes by a given author:
```graphql
{
  author(id: 1) {
    quotes {
      message
    }
  }
}
```