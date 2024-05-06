@core @mod_data
Feature: Prepare test scenarios

    Scenario: Create a basic coures
	Given the following "courses" exist:
	  | fullname               | shortname | category | numsections | format | initsections |
	  | Custom sections course | Sections  | 0        | 4           | topics | 1            |
      | Weeks course           | Weeks     | 0        | 4           | weeks  | 1            |
    And "5" "users" exist with the following data:
      | username  | s[count]             |
      | password  | test                 |
      | firstname | Student              |
      | lastname  | Test[count]          |
      | email     | s[count]@example.com |
    And "5" "course enrolments" exist with the following data:
      | user   | s[count] |
      | course | Sections |
      | role   | student  |
    And "5" "course enrolments" exist with the following data:
      | user   | s[count] |
      | course | Weeks |
      | role   | student  |
    And the following "course enrolments" exist:
      | user  | course   | role           |
      | admin | Sections | editingteacher |
      | admin | Weeks    | editingteacher |
	And the following "activities" exist:
	  | activity   | name         | course   | idnumber | section |
	  | assign     | Assignment 1 | Sections | assign1  | 1       |
	  | data       | Database 1   | Sections | data1    | 1       |
	  | forum      | Forum 1      | Sections | forum1   | 1       |
	  | quiz       | Quiz 1       | Sections | quiz1    | 1       |
	  | assign     | Assignment 2 | Weeks    | assign2  | 1       |
	  | data       | Database 2   | Weeks    | data2    | 1       |
	  | forum      | Forum 2      | Weeks    | forum2   | 1       |
	  | quiz       | Quiz 2       | Weeks    | quiz2    | 1       |
