Readme file for OS Project 
Team : 5d
________________________________________

Week 12 : (06-Apr-2013 to 12-Apr-2013)


Installations, Development/Coding and System Hands-on
•	Web Application "Insta RS - Instance Renting Service " completed successfully.
•	Integration of web application with Security module, Bitcoin payment module and AWS cloud module completed successfully.
•	Cloud infrastructure in split architecture tested and ready for use.
•	Unit testing of all modules completed successfully.
•	Github repository updated with latest code push.
•	Project now in Beta-release state/version.
•	Final project report skeleton draft ready.
•	The purchase of 1 BTC for final demo is deferred for now.
o	Bitcoin to rupee conversion stands at Rs. 4941
Work in Progress
•	Refining final project report's first draft.
•	Preparations for final demo.
•	Testing and reviewing project for next beta release and subsequent first alpha release.
•	Earning free bitcoins for the final demo.

Milestones
•	Phase 1 and 2 completed.
•	Phase 3 completed.
•	Phase 4 completed.
•	Phase 5 completed.
•	Phase 6 completed.
•	Phase 7 completed.
•	Phase 8 completed.
•	Phase 9 in progress.

________________________________________

Week 11 : (30-Mar-2013 to 05-Apr-2013)


Installations, Development/Coding and System Hands-on
•	Web application (IRS , name to be changed) integrated with Amazon Web Services (AWS) API successfully.
•	AWS based remote invocation of bundled image(instance) on cloud done successfully.
•	User request authentication and encryption done successfully.
•	Random security code for customer-cloud handshake tested and integrated successfully.
•	Web application tested for instance spawning with "Cloud in a box" as well as distributed cloud architecture.
•	Dynamic generation of instance private keys done successfully.
•	Resolved Issues :
o	Tomcat unexpected crash due to AWS plugins fixed with eclipse update
o	Automatic Instance termination after stipulated time(as per chosen plan) handled successfully.
Work in Progress
•	Integration in final stages.
•	Preparations for demo3.
•	Improving application response time.
•	The following points were discussed with sir today (April 5) and will be worked upon :
o	Threat scenarios handled appropriately but need to articulate in a better way.
o	Discuss about purchasing actual Bitcoins with college grant/sir's own expenditure/team contribution.

Milestones
•	Phase 1 and 2 completed.
•	Phase 3 completed.
•	Phase 4 completed.
•	Phase 5 in progress.


________________________________________

Week 10 : (23-Mar-2013 to 29-Mar-2013)

As per the suggestions by sir in the last meeting, the cloud implementation model is now being changed from Software as a service (SaaS) to Infrastructure as a service (IaaS) model. The cloud implementation, image bundling and application to be deployed are being changed to suit the change in implementation model.


Installations, Development/Coding and System Hands-on
•	Web application (earlier Pure-Pare) now redesigned successfully to suite new model.
•	Database design for the new application completed successfully.
•	1 medium sized image bundled successfully for the IaaS model.In this Ubuntu 11.04 Eucalyptus Machine Image we have added all the required software like Java and Tomcat Server so that to provide the working environment for the user who logs in.
•	Successfully spawned the Ubuntu Instance based on the user requirement like c1.large type or m1.medium type instance.
•	AWS API jars identified and other dependencies resolved for controlling cloud instances from the web application.
•	A sample prototype console application for spawning cloud instance done successfully.
•	Billing and metering strategy for IaaS model discussed and ready for implementation.
•	Blockchain based bitcoin payment prototype2 developed successfully.
•	Resolved Issues :
o	Cloud availability zones error successfully corrected by synchronizing front end and back end servers.
o	Front end server "kernel image not found" at boot corrected successfully.
o	Cloud instances reserved IP address range conflict with IIITB addresses resolved successfully.
•	Recurring issues :
o	Network issues are keeping the cloud (back-end and front-end server) connections unstable and difficult to work with.

Work in Progress
•	Authentication module development in progress
•	AWS based cloud controlling module development in progress.
•	Image bundling of different sizes in progress.
•	Integration of web application and its constituent modules in progress.

Milestones
•	Phase 1 and 2 completed.
•	Phase 3 completed.
•	Phase 4 completed.
•	Phase 5 in progress.


________________________________________

Week 9 : (16-Mar-2013 to 22-Mar-2013)


Installations, Development/Coding and System Hands-on
•	Pure-Pare web application increment 2 (additional functionality to prototype 1) complete.
•	Pure-pare mailing module to send mails with security code as an attachment, done.
•	Payment security code encryption sample application using Bouncy-Castle framework done.
•	Pure-Pare restricted view of published papers in PDF form done.
•	Identified a faster set of Bitcoin Protocol APIs, Blockchain JSON-API.
•	Sample application for transient wallet (based on Blockchain JSON-API) done.
•	Optimization : Payment confirmation time from over 2hrs-1week using Bitcoin-J API is now reduced to 15mins using Blockchain API.
•	Resolved Issues :
o	Bitcoin-J based payment module was resource and time consuming (of the order of days), a newer faster set of APIs identified.
o	Encryption using Bouncy Castle posed certain dependency issues which were resolved later on.
•	Recurring issues :
o	Even after repeated requests to Datacenter, port blocking and other network issues for setting up cloud images persist and are delaying/hampering the overall project development.
o	Bitcoin wallet synchronization still not complete due to recurrent network issues. More than 5weeks of download has resulted in just 90% download/sync.

Work in Progress
•	Development of authentication module for generating digitally signed security code in progress.
•	Development of next refined increment of Pure-Pare web application, with minor adjustments in progress.
•	Bundling of Ubuntu Server for Eucalyptus cloud using "volume detach" method in progress.
•	Installation of packages to image to be bundled in progress.
•	Startup scripts for Apache-Tomcat server, Mysql server and Pure-Pare in progress.

Milestones
•	Phase 1 and 2 completed.
•	Phase 3 completed.
•	Phase 4 completed.
•	Phase 5 in progress.


________________________________________
Week 8 : (09-Mar-2013 to 15-Mar-2013)


Installations, Development/Coding and System Hands-on
•	Pure-Pare, Bitcoin based application to be hosted on cloud finalized in design.
•	Pure-Pare prototype 1 development completed successfully.
•	PGP based prototype encryption module for payment mail authentication done successfully.
•	Application usage metering(based on Amazon's Spot instances) identified and finalized. Implementation design completed
•	Developed counter measures for threat scenarios identified.
•	Bitcoin wallet sync complete at 88% on two different systems.
•	Completed the presentation well in time for demo.
•	Sample web page created using Struts2 is loaded on running instance using SSH from machine outside the cloud and tested it by accessing it from client machine.
•	Resolved Issues :
o	Bitcoin-J new version had some compatibility issues, all the development done using the new jars has been rolled back successfully.
o	Bitcoin requires very high bandwidth and Data Center team has provided only partial relief by allowing full access post 10pm.
o	Communication between Server I and Server II adversely affected by network issues. The ports were identified and are now working.
o	Eucalyptus Admin console login profile successfully recovered and is now usable

Work in Progress
•	Development of Pure-Pare transient wallet for accepting payments on Bitcoin production network.
•	Development of a mailing module to send authentication mails to client.
•	Development of a refined prototype of Pure-Pare web application, with minor adjustments this shall be the final version.
•	The points discussed in the demo/presentation :
o	Metering mechanisms now finalized.
o	Formulate the threat scenarios in a more convincing way.
o	Discuss the improvements on above said points in coming meeting(with sir).

Milestones
•	Phase 1 and 2 completed.
•	Phase 3 completed.
•	Phase 4 completed.
•	Phase 5 in progress.



________________________________________


Week 7 : (23-Feb-2013 to 01-Mar-2013)

Installations and System Hands-on
•	23-Feb-2013 : Created two addresses using Bitcoin-J API for production network.
•	23-Feb-2013 : Added the addresses to Bitcoin-qt client successfully.
•	23-Feb-2013 : Successfully installed Tomcat Server on the modified image for to facilitate running of web application.
•	23-Feb-2013 : Bitcoin based transaction performed using Bitcoin-qt client.

Milestones In Completed
•	Phase 1 and 2 completed successfully.
•	Phase 3 completed successfully.
•	Phase 4 completed successfully.

Milestones In Progress
•	Phase 5 in progress.

Work in Progress
•	Bitcoin-J sample application created to fetch the Genesis block from test network.
•	Bitcoin Genesis block retrieval from Bitcoin test network in progress (85% done).
•	Test network port 18333 blocking to be resolved with data center team.
•	Comments (from sir) from the discussion/meeting :
o	Identify threat scenarios like "Man in the Middle" attack for transaction security.
o	Find solutions to the identified threats.
o	Metering mechanisms to be discussed in the next meeting.
o	Complete work on the above action items and schedule a meeting to discuss the same.


________________________________________

Week 6 : (16-Feb-2013 to 22-Feb-2013)

Installations and System Hands-on
•	16-Feb-2013 : Modified the ISO image of Ubuntu Server Edition to suite project requirements.
•	17-Feb-2013 : Built the Eucalyptus machine Image of the Modified ISO.
•	18-Feb-2013 : Tried installing Tomcat Server on the modified image for the web application.
•	19-Feb-2013 : Bitcoin EC Key pair generated and saved in wallet successfully.
•	19-Feb-2013 : Google Protocol Buffer based wallet write to disk done successfully.
•	20-Feb-2013: Started preparing the test Scenarios as per discussion with sir.
•	Resolved Issues :
o	Bitcoin network connectivity successful for production network on port 8333. Done with the help of data center team.
Milestones In Progress
•	Phase 5 in progress.

Work in Progress
•	Comments (from sir) from the discussion/meeting :
o	Identify threat scenarios like "Man in the Middle" attack for transaction security.
o	Find solutions to the identified threats.
o	Metering mechanisms to be discussed in the next meeting.
o	Complete work on the above action items and schedule a meeting to discuss the same.
•	Bitcoin Genesis block retrieval from Bitcoin test network in progress.
•	Test network port 18333 blocking to be resolved with data center team.


________________________________________

Week 5 : (09-Feb-2013 to 15-Feb-2013)


Installations and System Hands-on
•	09-Feb-2013 : Added ISO image of Ubuntu Server Edition to Eucalyptus Front-end Server.
•	10-Feb-2013 : Built the Eucalyptus machine Image of the Ubuntu Server Edition.
•	10-Feb-2013 : Cloned Bitcoin-J Github repository to Google Code SVN for development using Maven.
•	11-Feb-2013 : Associated the Kernal and RAMdisk image with the Added Image. Bundled the image and registered it.
•	12-Feb-2013 : Configured the Eucalyptus user console on Back End server.

Milestones/Tasks Completed
•	Phases 1 & 2 completed successfully.
•	Phase 3 completed successfully.
•	Phase 4 completed successfully.

Work in Progress
•	Development of init scripts so that the required configuration will be set up when image is booted.
•	Configuring of the Eucalyptus Userconsole on Front End server.
•	Network issues continue to exist - Resolving the Annex Gate box Error with the help of Data Centre team.
•	Bitcon-J EC keys generated to be written to disk using Google protocol buffers (protobuf).
•	Work on bitcoin-J API based prototype in progress.
•	Discussion on metering mechanism for cloud usage.
•	Discussion on transaction security to be implemented in the final release to prevent/tackle fraud. 



________________________________________
Week 4 : (02-Feb-2013 to 08-Feb-2013)

Documentation and Presentation
•	03-Feb-2013 : First draft of presentation completed.
•	04-Feb-2013 : Added slides for Bitcoin-J (after the team decided to go ahead with this particular API).
•	05-Feb-2013 : Presentation finalized after 3 revisions and layout changes. 

Installations and System Hands-on
•	02-Feb-2013 : Bitcoin clients setup on all team - members systems. Each team member can complete some surveys and earn Bitcoins for testing.
•	04-Feb-2013 : KVM-Quemu installation done by connecting Front-end and Back-end servers successfully
•	05-Feb-2013 : Existing OS image installation using KVM done on server 2 via frontend server successfully.
•	06-Feb-2013 : A small prototype using Bitcoin-J API built successfully.
•	08-Feb-2013 : Presentation for demo synced/pushed to Github repository.
•	Resolved Issues :
o	Network Connectivity issues affecting work on Frontend Server resolved by installing networks package and configuration changes.
o	KVM installation caused Front-end server to freeze without any cause. CentOS update and configuration file changes helped in fixing this.
o	Bitcoin-J API dependency issues resolved by downloading correct dependencies.

Milestones/Tasks Completed
•	05-Feb-2013 : Presentation completed on time (demo scheduled on 7th Feb though).
•	Phase 4 completed successfully.

Work in Progress
•	Development of a fully working prototype of Bitcoin-J API based application.
•	Attempting to prepare OS image for KVM-Quemu based installation.
•	Attempting to bundle OS image.
•	Discussion about metering based cloud usage rather than building an "Image Sharing" website.
•	Comments from demo/presentation :
o	Look into security aspect of the project.
o	Look into metering mechanisms for cloud usage.
o	Overall "no-slackness" in team efforts.
o	All team-members up-to task.
o	Complete work on the above action items and schedule a meeting with Guide within next-week. 


________________________________________
Week 3 : (26-Jan-2013 to 1-Feb-2013)

Goal Document and Presentation
•	25-Jan-2013 : Version 5 of Goal Document was submitted and Accepted.
•	28-Jan-2013 : Document digital signature verified and tarball submitted on LMS successfully. 
•	30-Jan-2013 : Presentation draft created with basic layout set.
Installations and System Hands-on
•	27-Jan-2013 : Completed installation of Eucalyptus on node controller(Server 2) as we need server2 before setting up server1.
•	27-Jan-2013 : Github repository setup done successfully by team lead.
•	30-Jan-2013 : Completed the installation of Eucalyptus on front end controller(Server1). 
•	30-Jan-2013 : Server 2 registration done successfully with server1.
•	31-Jan-2013 : Github repository project structure setup and README, github guide and Goal docs successfully committed and pushed.
•	31-Jan-2013 : Rest of the team joins github and first couple of commits done.
•	Resolved Issues :
o	CentOS did not pickup freed space and even empty partitions. Utilized third party partition editors to fix the issue.
o	Server 2 installation disturbed existing system's OSes (ubuntu and windows7). The complete system had to be formatted and fixed.
o	Server 1's installation caused grub corruption multiple times. Fix done.
o	Github has network issues. "git push" not working. Issue fixed on 28-Jan-2013 without any intervention.
Literature Study
•	Studied chapter "Understanding Abstraction and Virtualization" from Cloud Computing Bible by Barrie Sosinsky.
•	Study on role and functionality of different components of the architecture.
•	Study on how Bitcoin transactions work.
•	Studied tutorials to use latex-beamer for presentation.
•	Detailed study of the architecture for preparation of presentation Q&A round.
Milestones
•	Phase 1 & 2 completed successfully on 18th and 28th Jan 2013 respectively.
•	Phase 3 completed successfully on 30-Jan-2013
Work in progress
•	Preparation of presentation and improving it. Deadline 03-Feb-2013.
•	Resolve Network connectivity issues on Eucalyptus front-end server. Deadline 04-Feb-2013.
•	Sample programs to get used to Bitcoin API (BitcoinJ). Deadline 07-Feb-2013.
  

  
________________________________________



Week 2 : (19-Jan-2013 to 25-Jan-2013)
After submission of initial draft, the job for this week was to improve the submitted document and gain insight into the project details. This involved reading various published papers and guides along with team discussions on how to proceed with the project.
The tasks done during the week were as follows :
1.	Study of cloud details from "NIST Definition of Cloud". 
2.	Study of commercial cloud based services and cloud architecture from "Cloud Computing Bible" by Barrie Sosinsky. 
3.	Study of Bitcoin details from S.Nakamoto's paper on Bitcoins, ”Bitcoin: A Peer-to-Peer Electronic Cash System” 
4.	Understanding the installation and configuration steps required for setting Eucalyptus Cloud Servers. 
5.	Study of Bitcoin API for integration with the service to be deployed on cloud. 
6.	Documentation work for revisions suggested over the week for report improvement. 
7.	First attempt (not complete yet) at setting up Eucalyptus cloud server on one of team member's machine. 

--------------------------------------------------------------------------------------------------------


Project Timeline :
4.	Meetup III		: Jan 16 2013
	Description 		: The following points were worked upon/discussed in the meeting :
					a. Posted first wiki update with team details 
					b. Studied cloud architecture in detail for gaol document purpose
					c. Inmproved the goal document 
			
3.	Meetup II		: Jan 14 2013
	Description		: The following points were worked upon/discussed in the meeting :
					a. Did discussion on the topics studied as per delegated work
					b. Started work on first draft
					c. Selected Team Lead


2. 	Meetup I 		: Jan 12 2013
	Description 		: The following points were worked upon/discussed in the meeting :
					a. Discussion on general know how about BitCoin and Cloud 
					b. Delegation of topics - Cloud and BitCoins amongst team members

1.	Project Initiation 	: Jan 10 2013
	Description 		: Team meetup and discussion on how to proceed with the project

