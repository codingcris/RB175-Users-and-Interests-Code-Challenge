#Code Challenge: Users and Interests

This project is part of Launch School's curriculum and the RB175 Networked Applications Course.
This project aims to create a simple web application which acts as a small social media network.
The project requires students to have a basic understanding of html as well as routes, helper methods, and layouts in Sinatra.
The project should serve to solidify the student's knowledge of the aforementioned concepts and provide an opportunity to apply
them for a practical purpose. My implementation of the program is designed very minimally, having used no css, but the addition
of css to the application will serve for good practice in the future.

##Requirements
  - homepage lists all user names
    -user names are found in users.yml file
  - each user name should link to a user page
    - display: email address, interests (separated by commas)
    - footer displays links to all user pages excluding current user page.
  - use a layout to contain code shared across all views
    - every page should display a message such as: "There are 3 users with a total of 9 interests."
      - helper method count_interests determines number of interests across users
    - add user and verify message updates as expected
