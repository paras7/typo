Feature: Be able to mess with Categories
    As a blog administrator
    In order to have articles in a better form
    I want to be able to create new categories and edit them
    
    Background:
        Given the blog is set up
        And I am logged into the admin panel
        When I follow "Categories"
    
    Scenario: Successfully view categories page
        Then I should see "Categories"
        And the form fields should be blank
    
    Scenario: Link should work
        Then I should see "Categories"
        And I should see "Permalink"
        And I should see "General"
    
    Scenario: Create new Categories
        When I fill in "Name" with "NewCategory"
        And I press "Save"
        Then I should see "NewCategory"
        And I should see "no articles"
    
    Scenario: Edit Categories
        When I follow "General"
        Then I fill in "Description" with "uno, dos"
        And I press "Save"
        Then I should see "uno"
