# Login required

## Objectives

We're going to make a Rails app that requires you to be logged in to see one of its pages.

## Introduction

Our app has two pages:
  1. A login page, where the user enters their username. No passwords, we'll just trust them. After they're logged in, they're taken to...
  2. A user homepage, which says, "Hi, #{username}", and has a link to the secret page, which is...
  3. A page with a secret on it, which you must be logged in to see.

## Instructions

Write specs for the sessions controller and write the sessions controller. This will work pretty much identically to in the sessions controller lab.

There are some existing tests of the application controller methods `current_user`. That method doesn't exist, so the specs are failing. Go ahead and write it.

Finally, write a `SecretsController` and make its specs pass. Use a `before_filter` to prevent any route from being accessed without login.

Finally, ensure your routes are wired to the appropriate controllers, and your application flows appropriately. I should be able to:

  * visit the root of your app and be redirected to a login page,
  * if I fail to enter a name on the login page, I should be redirected there until I do.
  * once I do, I should get to the welcome page, greeting me and linking me to the secret page.
  * what's on the secret page is up to you. Its URL is also up to you. But if I visit that URL without logging in, I must be redirected to the login page. Under no circumstances must we allow people who are not logged in to see the secret.

Happy coding.
