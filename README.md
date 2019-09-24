# README

## ReadHer

Readher is a social media where users can share the books and the female writers they like. They can also take a look at what the others shared and discover new talented writers. Eventually, they can send private messages to users they have affinities with, for a chat or for a drink.

## Why ReadHer ?

Readers who want to to get off the beaten tracks and access the less visible and underground writers don't have a centralized online resource to do so. Margaret Atwood and Simone de Beauvoir are great writers, but they aren't the only ones and there are a lot of other talented female writers who are worth a read. Women also gather alternative worldviews with them and literature is where they are able to fully express themselves. ReadHer wanted to give them a space where they can be seen and heard.

## Framework

Built with Ruby on Rails 2.5.1

## How it work ?

### Database
- Users
- Crushes
- Libraries
- Crushes_libraries
- Conversations
- Messages
- Comments

### Features

1. Users can share their crushes (attributes : book_title, author_name, genre, description, quote)
2. Select the other crushes to store them in their library
3. Use a search bar to find a specific book or author
4. Send or receive private messages
5. Comment the other crushes.

### Front

Readher uses the framework Bootstrap.

## Getting started

To get the Rails server running locally:

- Clone this repo
- bundle install to install all the dependencies : ```$ bundle install```
- rake db:migrate to make all database migrations: ```$ Rails db:migrate```
- start the local server : ```$ Rails s```

## Code overview

Devise - For implementing authentication
