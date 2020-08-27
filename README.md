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

#### The version that is displayed in the presentation is both the initial and final design, as new records were simply added.

### MoSCoW Prioritisation
This acronymical form of documentation was used to order tasks and to initially meet the MVP. Once this had been met, then further development could occur, such as adding multiple worker nodes to the swarm, enabling effective load balancing and lessening the chances of redundancy. MoSCoW also allows for structure, particulary in reinforcing what attributes won't be added, given the time constraints - such as an extensive list of fortunes, this documentation was a reminder that I needed a small variety of fortunes in order to make sure the MVP is met, and spend less time on creating more possibilites, and instead devote that import time to deploying and automating the program. 

### CI Pipeline
This diagram is essentially a blueprint for the project. It depicts where the deployment starts and where it ends, along with all the development in between. 
## FIND DIAGRAM + EXPLAIN IT
_________________________________________________________________________________________________________________________________________________________________

## Testing
As usual, testing is one of the biggest factors in the development of a program. Extensive testing needs to be carried out to make sure that there is zero possibility of the program breaking, no matter the circumstances. Due to the nature of the specification, the API could be extensively tested, eventually reaching a coverage of 100% on all four services.

#### However, this was not achievable in a matter of minutes.
## EXPLAIN PROGRESSION OF TESTING, ANY ISSUES ENCOUNTERED
## WHAT COULD / COULDN'T BE TESTED --> WHYYY
## TEST REPORT - WRITE UP QUICK SUMMARY

_________________________________________________________________________________________________________________________________________________________________

## Application Deployment Process

### Technologies Used and Overview of Development
#### (- In a rough chronological order of implementation)

#### A multitude of diverse, intuitive technologies were combined in order to successfully build, develop and deliver this project.

## QUICK SUMMARY ON PREVIOUS TECHS USED
## GO IN MORE DEPTH ON DOCKER, SWARM, ANSIBLE, NGINX AND JENKING PIPELINE

#### Every technology listed above was undeniably paramount in the creation of the project, and the absence of any one technology would hinder the application. 
_________________________________________________________________________________________________________________________________________________________________

## Future Improvements
## USER INPUT FOR CRITERIA - CHOOSE COLOUR / NUMBER
## CRUD FUNCTIONALITY

_________________________________________________________________________________________________________________________________________________________________

## Honorable Mentions
* QA's own Luke Benson - Trainer
* The JulyDevOps Cohort
_________________________________________________________________________________________________________________________________________________________________
