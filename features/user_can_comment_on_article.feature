Feature: User can comment on article
  As a reader
  In order to be able to express my opinion
  I would like to be able to comment an article


  Background:
    Given the following articles exist
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Faraz  |

  Scenario: User adds a comment
    Given I visit the site
    And I click on "Learn Rails 5"
    And I fill in "Comment" with "Terrific!"
    And I fill in "Email" with "antonella@craftacademy.se"
    And I click on "Create Comment"
    Then I should be on the "Learn Rails 5" page
    And I should see "This is awesome!"
    And I should see "antonella@craftacademy.se"
