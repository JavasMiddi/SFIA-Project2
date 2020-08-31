# Project SFIA 2 - Fortune API

## The Brief
*-Taken directly from the Practical Project specification on Community-*

At its core, you are creating an application that generates “Objects” upon a set of predefined rules. These “Objects” can be from whatever domain you wish.

You are required to create a service-orientated architecture for your application, this application must be composed of at least 4 services that work together.

## Proposed Solution
My approach to this project was a practical one. I was aware that the focus on the project was less on what the program could do, but how it was deployed. Thus, I decided to create a program similar to a paper fortune teller - once a number and colour was chosen, a 'fortune' was the result. This would perfectly meet the requirements for the specification, as I would need to make 4 services:
- Service 1: The core service, rendering Jinja2 templates.
- Service 2: Generating random object (colour)
- Service 3: Generating random object (number)
- Service 4: An object based upon the results of services 2 & 3 (fortune)
____________________________________________________________________________________________________________________________________________________________________

## [Architecture](https://docs.google.com/presentation/d/1weZL-Zp9o53w3UqFtW8Zfl6DwIV6KpItpDQGcfoKDuc/edit#slide=id.g8fe6db1bf5_0_0)

### Entity Diagrams
As part of the planning process of the project, an ED was constructed to demonstrate the process in which the project was planned and developed. The initial Entity Diagram was simply a template, illustrating how the program should work. 

After the first few stages of development, the second diagram was successfully implemented; service 1 was acting as the core service, containing the front-end templates, and successfully communicating with services 2 and 3 to receive a colour and a number. As the specification states, the front-end is simply a homepage with a button/link to the service 4 page, creating the POST requests. In the early stages, this page displayed the HTTP GET Requests of services 2 and 3, signalling that the link has been initiated.

Working towards the final diagram, service 4 was progressively implemented into the program, creating the list of fortunes that would be selected dependent upon the results of service 2 and 3. After much troubleshooting, and through the use of JSON to send two different bits of data, service 1 could finally communicate with all other services in creating the API. On the fortune.html was displayed the fortune, along with the data received from service 2 and 3, with a refresh button in order to randomise the data again. 

### Risk Assessment
A risk register was used to set out the possible risks that may occur during the development of the project. As with the program itself, the risk assessment was incremental - an inital assessment was drawn up, then, once an issue was encountered, it was added into the assessment, logging all potential and actual risks that may have, and were met during the development of the program.

An algorithm is configured to assess the tolerance score and rating; this is calculated using the probability and severity of said risk. For example, high probability and severity gives a result of 9 - which is highlighted red and labelled as unacceptable. This is a way of focusing on issues that simply cannot be allowed to occur, otherwise they pose a huge risk to the application, whether it be associated with security or breaking the app itself.

#### The version that is displayed in the presentation is both the initial and final design, as new records were simply added.

### MoSCoW Prioritisation
This acronymical form of documentation was used to order tasks and to initially meet the MVP. Once this had been met, then further development could occur, such as adding multiple worker nodes to the swarm, enabling effective load balancing and lessening the chances of redundancy. MoSCoW also allows for structure, particulary in reinforcing what attributes won't be added, given the time constraints - such as an extensive list of fortunes, this documentation was a reminder that I needed a small variety of fortunes in order to make sure the MVP is met, and spend less time on creating more possibilites, and instead devote that import time to deploying and automating the program. 

### CI Pipeline
This diagram is essentially a blueprint for the project. It depicts where the deployment starts and where it ends, along with all the development in between. The Pipeline is a breakdown of all the processes that were done in order to produce the final version which is the application. At each stage, the relevant languages/applications are depicted above their associated stages in the pipeline. 
_________________________________________________________________________________________________________________________________________________________________

## Testing
As usual, testing is one of the biggest factors in the development of a program. Extensive testing needs to be carried out to make sure that there is zero possibility of the program breaking, no matter the circumstances. Due to the nature of the specification, the API could be extensively tested, eventually reaching a coverage of 100% on all four services.

#### However, this was not achievable in a matter of minutes.

### Testing during this project provided me with a number issues, one of which forced me to change the service 1 completely.

* Services 2, and 3 were fairly simple to test: getting a correct response code (200), so that the routes were correct and were made. Ensuring the tests were written correctly, both of these generated 100% coverage, as displayed in the presentation. 

* Service 4 were simple tests, but getting the correct data proved a challenge. At the bottom of the lists is an else statement, the chances of this else statement being used were near impossible, assuming the correct data was retrieved. For ages I was receiving the fortune depicted by the else statement, indicating the the data recieved from services 2 and 3 weren't as they should be. 
This was later resolved through the use of a JSON dictionary configuration - the service was receiving only one input, and setting both the variables to be the same, for example, service 4 was receiving "blue", "blue" or "1", "1" - as neither of these combinations were in the comparable fortune list, the else statement was triggered. After the correct data was received, in it's text form, all fortunes simply had to be tested, as well as the else statement, giving another 100% test coverage report - as indicated in the screenshots in the presentation.

* Service 1 was a whole different task. It produced errors and obstacles all the way up to Jenkins Automation, it was at that point where I decided to create an SQL Instance, instead of configuring it internally like I had previously done. Having to continually change the environment variables was tricky enough manually, but when it came to automating the application, this was beyond my knowledge and skill. Therefore, I created an external instance and updated the Database URI and the Test Database URI; the tests finally passed and it made automation a lot easier. For ages I had struggled with initalising the database, sending the correct data to it, creating the schema and tables, but creating an external instance solved all of these issues for me. Fortunately, this change didn't have as big a knock-on effect as I had anticipated, minimal code had to be changed. Once the variables had been exported properly then the tests could be run. These tests included viewing the pages and configuring the correct GET and POST requests, and testing the data of one fortune. If one of these fortunes passed the test, then they all would, as the funnctions were programmed and configured correctly. This service also obtained 100% test coverage - as displayed in the presentation.

* Test Report - Summary
  - In conclusion, the services were able to obtain 100% test coverage due to the nature of the project. Whilst the description of the application is simple, the focus was more on functionality. Areas such as deployment, automation and configuration were prioritised over how the application looked and what you could do with it. Therefore, testing could be heavily implemented throughout the entire project, every aspect of the app could be tested, resulting in the coverage report that is displayed at the end of Pytest. There were minimal sections that couldn't be tested, even using the Pytest's function to provide a coverage report and indicate lines in the services that weren't tested, all reports gave the same answer: 0. There were no lines that were missing from the coverage report, thus, all lines were accounted for and had been tested and had indeed passed.

_________________________________________________________________________________________________________________________________________________________________

## Application Deployment Process

### Technologies Used and Overview of Development
#### (- In a rough chronological order of implementation)

#### A multitude of diverse, intuitive technologies were combined in order to successfully build, develop and deliver this project.
* Agile Fundamentals
  - This is the framework that was used to organise and plan the entire project. Working in an agile way enables the planning of sprints, a product backlog, and     allowing for adaptability. Working in an agile way facilitated the development of the application, testing and documentation simultaneously. Without such fundamentals, the project wouldn't have been completed in the time given, as each change would require backtracking and remapping of the entire plan. 
  
* [Jira](https://jsandhu.atlassian.net/secure/RapidBoard.jspa?rapidView=9&projectKey=FRTNPRJCT1&view=planning&selectedIssue=FRTNPRJCT1-40&epics=visible&issueLimit=100) - Project Tracking
  - The Jira Board was essentially the backbone of this project. It defined all tasks, which tasks should be completed when (via the use of sprints) and frequent 
    checks ensure that tasks weren't forgotten or missed. Along with the use of Planning Poker, tasks were also assigned story points, which allocates priority and levels of difficult.
    
* [Git](https://github.com/JavasMiddi/SFIA-Project2) - VCS
  - The use of Git was imperative in developing the assignment; it was used to not only hold the repository which contains the entire application, but allowed for the push up of changes to the master version of the project. As a Version Control System, it helps DevOps engineers such as myself to manage the source code, and the project simply wouldn't exist without it. 
   
* Docker / Docker Swarm
  - Docker was used to containerise the application, through the use of a variety of fucnctions that Docker has to offer. For example, the use of a docker-compose file, creating containers and images, and implementing a swarm cluster were all used to bring the project together. All functions attributed to efficiency, security and automation, before the CI Server was even configured. 
  - Docker Swarm is an orchestration tool for Docker, creating networks and services in order to share the workload amongst manager and worker nodes. Swarm also facilitated the preservation of data - utilising volumes for rolling updates. As replicas of the services were made, the application could run whilst being updated, which is a function that often goes unnoticed but is imperative to provide the best application for a user. 
  
* Ansible
  - Ansible is a configuration management and deployment tool, written in YAML - the same language as the Docker Compose file. It is a powerful asset in the sense that it can spin up a number of nodes to deploy an application, through the use of an inventory and a playbook. 'Plays' can be specificed in the playbook, each play has various properties including the tasks to run and the hosts to run those tasks on. It was used to create the environment in which the application was to be run, pre-installing the languages and tools needed to deploy the project. The playbook was also used to intialise the Swarm, adding the Worker Nodes to it and installing the neccessary packages to make sure they had everything they needed to deploy the app. 
  
  - One advantage of this is that if the node is already in the 'desired state', then the playbook simply skips over them, as no changes are needed to be made.
  
  - Roles were also utilised in the playbook, similar to functions in Python, these can be reused whenevever they are called in the playbook, which is useful as it reduces redundancy - the roles simply had to be assigned to the corresponding nodes. 

* NGINX
  - NGINX was used as a reverse proxy to automatically redirect and navigate the user to the application, removing the need to type in the whole IP Address, as well as the port that the app is using. As well as accessibility, this is also a form of security as the full address is unknown to the user, making it more difficult for potential hackers to directly acess the application. 
  
* Jenkins
  - Jenkins was used as the CI Server for this project. As the central hub of automation and deployment, it has a large role in all areas of the development of the project. Despite only being implemented at the end of development, it brought all the separate technologies together. Utilising executable scripts and a Jenkinsfile, the pipeline automated the project, although being a source of many errors that I encountered, once it had been configured it takes the application and raises it to a higher level of development and automation. Breaking down the scripts, the pipeline ran testing on all four services, then ran the Ansible Playbook, before finally deploying the Swarm.

#### Every technology listed above was undeniably paramount in the creation of the project, and the absence of any one technology would hinder the application. 
_________________________________________________________________________________________________________________________________________________________________

## Future Improvements
#### Following the issues addressed, these would be the first port of call in future development: 
* The NGINX reverse proxy configuration would be the highest priority, as the application still works via the Manager and Worker 1 node. Extra time would be devoted to investigating this issue further, in order to prevent the user from having to physically direct themselves to the port which the application is on - this would enable efficiency, security and reduce possible errors.

* Furthermore, fixing the second worker node would be the next priority - load balancing the services also enables efficiency, and creating replicas allows for rolling updates - without the application going down in order to process these updates.

* Finally, concerning the last column in MoSCoW, future improvements would be to enable user input for the criteria to select a fortune. For example, forms would be initialised to allow the user to choose from a list of colours, then select a number in a given range, to determine a fortune. This would create an interactive application for the user. To extend this even further, CRUD functionality would be implemented in order for the user to view their fortunes, delete their fortunes in order to start again, and possibly even create their own.
_________________________________________________________________________________________________________________________________________________________________

## Honorable Mentions
* QA's own Luke Benson & Harry Volker - Trainers
* QA Courseware
* The JulyDevOps Cohort
_________________________________________________________________________________________________________________________________________________________________
