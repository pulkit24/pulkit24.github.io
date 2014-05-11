app = angular.module "portfolio", []

app.controller "PortfolioCtrl", ($scope, $http) ->
	$scope.projects = projects;

# Project tiles
app.directive "project", ->
	restrict: "EA"
	, scope:
		title: "@"
		, description: "@"
		, organization: "@"
		, date: "@"
		, site: "@"
		, url: "@"
	, templateUrl: "project.tpl.html"

# Project data
projects = []
projects.push
	title: "Social Network Explorer"
	, description: "Intelligently categorize, compare and plot trends of public posts on Facebook and Twitter. Built entirely in AngularJS, with a PHP back-end for API access and caching."
	, organization: "At RMIT University"
	, date: "Spring 2013"
	, site: "Github project"
	, url: "http://github.com/pulkit24/social-explorer"
	, order: 1
projects.push
	title: "Institute of Public Accountants Australia"
	, description: "Responsive online magazine and company blog with issues and archives management."
	, organization: "At Atcomm Enterprises"
	, date: "Summer 2012"
	, site: "Live site"
	, url: "http://pubacct.org.au"
	, order: 2
projects.push
	title: "Distributed Storage System"
	, description: "Utilize storage space from multiple nodes in a network via a virtual file system, built using FUSE and Java, with custom protocols for network I/O, mirror management and fault tolerance."
	, organization: "At Narsee Monjee University"
	, date: "2009–10"
	, site: "Github project"
	, url: "http://github.com/pulkit24/cloudy"
	, order: 3
projects.push
	title: "IT-Enabled Academia"
	, description: "Manage educational institutions, student-faculty interactions and administrative tasks. Web-based SOA framework using JSP and Servlets. Uses XQuery and OLAP for complex data."
	, organization: "Representing Narsee Monjee University at IBM's The Great Mind Challenge"
	, date: "2008"
	, site: "News article"
	, url: "http://www.managementparadise.com/forums/announcements/101248-nmims-mpstme-achievement-ibms-great-mind-challenge-2008-a.html"
	, order: 4
projects.push
	title: "CLIPSED Social Marketing Platform"
	, description: "Platform for running gamified marketing campaigns on Facebook, featuring a custom CMS and comprehensive analytics tool for tracking users and their interactions. Built on PHP (Joomla as a base), with jQuery and AngularJS. Integrates with Facebook, Twitter, LinkedIn, Gmail, Yahoo and Windows Live APIs."
	, organization: "At Atcomm Enterprises"
	, date: "2012–14"
	, site: "Live site"
	, url: "http://clipsed.com"
	, order: 5
projects.push
	title: "Angular State Tracker"
	, description: "A flexible and powerful state control utility for AngularJS."
	, organization: ""
	, date: "Autumn 2014"
	, site: "Github project"
	, url: "http://pulkit24.github.io/state-tracker/index.html"
	, order: 6
projects.push
	title: "Travel Planning Game"
	, description: "Web-based game about travel expenses and preparedness"
	, organization: "For ANZ Bank at RMIT University"
	, date: "Autumn 2014"
	, site: "Github project"
	, url: "http://pulkit24.github.io/state-tracker/index.html"
	, order: 6
projects.push
	title: "Angular State Tracker"
	, description: "A flexible and powerful state control utility for AngularJS."
	, organization: ""
	, date: "Autumn 2014"
	, site: "Github project"
	, url: "http://pulkit24.github.io/state-tracker/index.html"
	, order: 6
