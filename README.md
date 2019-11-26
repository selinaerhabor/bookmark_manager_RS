# Readme file

## User Stories

```
As a User
So I can visit a site I bookmarked
I want to view a list of my bookmarks
```

```
As a User
So I can store my bookmarks
I want to add a bookmark to Bookmark Manager
```

![Domain Model for User Story 1](https://github.com/selinaerhabor/bookmark_manager_RS/blob/master/Bookmark%20Manager%20Domain%20Model.jpg)

1. Connect to `psql`
2. Create the database using the `psql` command CREATE DATABASE bookmark_manager;
3. Connect to the database using the `psql` command `\c bookmark_manager`;
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

## Setting up test database
1. Connect to `psql`
2. Create the database using the `psql` command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the `psql` command `\c bookmark_manager_test`;
4. CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
