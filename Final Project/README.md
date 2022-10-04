
# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/ , based on the Complete Administrative User Guide specifications (https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf).


**The final project will be split into 2 sections: [Testing section](https://github.com/madalinagherghel/manual_testing_portofolio/edit/main/Final%20Project/README.md#1-testing-section) and [SQL section](https://github.com/madalinagherghel/manual_testing_portofolio/edit/main/Final%20Project/README.md#2-sql-section).**

Tools used: Jira, Zephyr Squad and MySQL Workbench.


# Functional specifications

The application chosen by me for testing is https://opensource-demo.orangehrmlive.com/ , "My info" module: "Personal details" and "Attachments" sections.
   
The test project was created with the help of the Jira tool and is divided into one epic "My info module interface" and two stories, one for the ["Personal details"](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/PersonalDetails_story.pdf) section, having as a requirement, the verification of the functionality of updating an employee's personal details as a Admin/User, and the second story for the ["Attachments"](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/Attachments_story.pdf) section to verify the functionality of adding an attachments/multiple attachments.


# 1 Testing section

The Test Plan is designed to describe all details of testing for the "My info" module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the "My info" module, "Personal details" and "Attachments" sections from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

#### 1.1.1 Roles assigned to the project and persons allocated

- Project manager - Sorin Comanescu
- Product owner - Mihai Murariu
- Software developer - Gabriela Tomescu
- QA Engineer - Madalina Gherghel

#### 1.1.2 Entry criteria defined

* roles needed for the project are allocated
* functional specifications are defined
* initial project risks were detected and mitigated
* The environment is up and running
* Role and permissions are allocated
* User created

#### 1.1.3 Exit criteria defined

* number of unresolved bugs is insignificant or they have low priority
* all tests have been executed
* all resolved bugs have been re-tested and approved by the QA team
* deadline was reached
* no detected major risk remained un-mitigated
* exploratory regression testing must be performed on the My Info module, which includes the "Personal details" and "Attachments" sections.


#### 1.1.4 Test scope

__Tests in scope:__  All the features of the "Personal details" and "Attachments" sections which were defined in software requirement specifications need to be tested: functional testing and GUI testing. 

__Tests not in scope:__ Performance Testing, stress testing, Volume Testing, compatibility testing with multiple browsers, mobile testing ,functional Testing using White-box Testing Tehniques,integrations of the dependents module with other modules. 

#### 1.1.5 Risks detected

* Project risks: lack of experience of the QA team, short deadline of Zephyr Squad trial.
* Product risks:</br> 
> Unstable application (there are times when it doesn't work at all), which can lead to inability of the product to meet requirements.</br> 
> Poor functioning ( sometimes login is not allowed ) this can lead to inability of the product to meet the customer's expectations

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 

## 1.2 Test Monitoring and Control

It will be done by generating periodic reports that reflect the current status of the test.
![to_do_status](https://user-images.githubusercontent.com/112575459/193826816-5acac608-c16d-4b18-b7d7-1b5564456d5c.png)

## 1.3 Test Analysis

The testing process will be executed based on the above requirements for the "Personal details" and "Attachments" sections. The following test conditions were found:

* Enter data only for mandatory fields and check that the employee profile is updated;
* Leave mandatory fields empty and check that the dependant cannot be updated;
* Enter data for all available fields and check that the employee profile is updated;
* Updating a employee profile picture;
* Adding an attachment or multiple attachmets;
* Checking the correct operation of "Add", "Save", "Delete", "Edit", "Cancel" buttons;
* Checking all text fields;
* Checking all check boxes;
* Check all validation constraints for the fields.


## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are: boundary value analysis, equivalence partitioning and use case testing.

**Test cases:**

The test cases with steps can be viewed here: [Test cases+Steps](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/test_cases%20%2B%20steps.pdf)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
* Access to the testing environment is given: Username : Admin | Password : admin123
* Cycle summary was created
* Test cases were added to the cycle summary
 
## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [Run test for personal details section:](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/cycle_summary_execution.pdf)
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [created_bugs.pdf](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/all_bugs.pdf)]()
    *  "SSN number" field can be inputted with more than 9 digits
    *  "License Expiry Date" can be inputted with a date in the past
    *  "Personal details" section is not displayed in the "My info" section
    *  "Employee id", "SSN number", "SIN number", "Other id"  fields can be inputted with special characters
    *  "SSN number", "SIN number" fields can be inputted with letters
    *  "SSN number" field can be inputted with wrong format
    *  "Date of birth" field can be inputted with a date in the future
    *   
 Full regression testing is needed after the bugs are fixed


## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.csv](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/traceability_matrix.xlsx)
* Test execution chart was generated, the final report shows that a number 11 tests have failed of a total of 59
* A number of 59 test cases were planned for execution and all of them were executed
* A number of 11 total bugs were found, from which the priority is: 9 are high, 2 are medium 

![100% test cases execution](https://user-images.githubusercontent.com/112575459/193821732-8fd14359-2c50-423d-b995-bb14e7b7b191.png)


# 2 SQL section

I created the [OrangeHRM database](https://github.com/madalinagherghel/manual_testing_portofolio/blob/main/Final%20Project/orangehrm.sql) using the information found in the "Personal details" section and I added some informations from the "Dependents" section for some specific joins.

