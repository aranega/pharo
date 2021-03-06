"
I'm the help page for welcoming new users. 
I pass through basic concepts to getting started with Pharo.
"
Class {
	#name : #WelcomeHelp,
	#superclass : #CustomHelp,
	#category : #'Pharo-Help'
}

{ #category : #accessing }
WelcomeHelp class >> bookName [
	"the character zero is a hack to display it always first"
	^ (Character value: 0) asString, 'Welcome'
]

{ #category : #pages }
WelcomeHelp class >> changeLog [
	^ HelpTopic 
		title: 'Changelog'
		contents: (self heading: 'Changelog highlights'),
'- moving the development process to git and GitHub (see ',(self url: 'https://github.com/pharo-project/pharo'),')
- bootstraping of a smaller image that will not include compiler/parser (Compiler and related packages are exported and loaded using a binary exporter named Hermes)
- integration of Renraku quality framework
- integration of WebBrowser
- using Tonel format for Iceberg (a single file per class instead of a file per method)
- including the Shift Class Builder
- release checks for proper categorization (no protocols left	without methods, categorization
- many new extensions to tools like the inspectors (for instance to browse instances when inspecting the class)
- ability to call external commands without additional packages - including piping (see Smalltalk os runCommand: ... and resultOfCommand:)
', (self heading: 'Primary Issues'), 
'Over ... fixes and enhancements were integrated in this release.

- better package structuring, better separation of code packages vs tests packages
- improved release tests to ensure proper categorization of common methods (hash, =, setUp, tearDown, etc.), to avoid unused temps and other
- simplified suggestions menu definitions
- additional smart suggestions to browse variable definition
- addition of "Users of it" in the "Code Search" menu 
- new "Browse receiver" feature in the debugger
- additional filters and titles in the simple method browser that is included in the inspector
- allow to define other default folders for GTPlayBook
- improvements for MetaLink (including better inspection)
- Command line handler improvements for deployment scenarios
- Horizontal scroll bar for FastTable
- Glamour example browser is now searchable
- Playground is now also extensible (similar to GTInspector)
- Conditional breakpoints/watches

As the complete list of fixed issues is too large to be placed here, you can review it on the FogBugz issue tracker (', (self url: 'https://pharo.manuscript.com'), ') (requires account).', 
(self subheading: 'Tools'),
'- Integration of Calypso (new and improved SystemBrowser)
- Improved Iceberg Git repositories manager
- integration of ReferenceFinder
', 
(self subheading: 'VM related'), 
'- EncoderForSistaV1',
(self subheading: 'Reflectivity'), 
'- General improvements
- ...
', 
(self subheading: 'Other'), 
'- create clear image entry point (PharoBootstrapInitialization>>#initializeImageOfType:majorVersion:minor:suffix:buid:commitHash:)', 
(self subheading: 'Cleanups'), 
'- Object>>#setPinned: is now private
- unnecessary "self debug:" comment removed 
- super setUp now called in various test classes 
- better zeroconf reporting of missing i386 libraries for command line
- halt: and haltIf: are also highlighted in red as the other flavours of halt messages   
- 
', 
(self subheading: 'Unit testing/Documentation'), 
'- More class comments and documentation', 
(self subheading: 'Network'), 
'- Zinc/Zodiac update

You can see the Pharo 7.0 changelog at: 

', (self url: 'https://github.com/pharo-project/pharo-changelogs/blob/master/Pharo70ChangeLogs.md')

]

{ #category : #pages }
WelcomeHelp class >> documentation [
	^ HelpTopic 
		title: 'More Documentation'
		contents: (self heading: 'More Documentation'), 
		
	'The most important documentation is the one you can get by exploring the system, reading class comments and looking for examples. 
You can find "in image" help by clicking on the following expression:

', (self doItFrom: 'HelpBrowser open.'), '

This browser is also accessible from the World>Help>Help Browser menu (just click the desktop, select Help, and then Help Browser).

A compendium of Pharo documentation can be found at: 

', (self url: 'http://pharo.org/documentation'), '

There you can find:
- Pharo books: ', (self url: 'http://books.pharo.org'), '
- Screencasts: ', (self url: 'https://www.youtube.com/channel/UCp3mNigANqkesFzdm058bvw'), '
- Presentations: ', (self url: 'http://www.slideshare.net/pharoproject/')
]

{ #category : #pages }
WelcomeHelp class >> exploreEnvironment [
	^ HelpTopic 
		title: 'Explore the Pharo Environment'
		contents: (self heading: 'Explore the Pharo Environment'), 
		
		'The best way to learn Pharo is to explore it by yourself. This is live objects all the way down: they can be inspected, browsed, changed... everything in the environment you have in your hands.
But sometimes it can be hard to get started with the tools and capabilities the environment provides.

The most complete and updated guide for the Pharo environment can be found in the "Updated Pharo by Example" free book. It is still a work in progress, but most of it is already done. You can find the book here: 

', (self url: 'https://github.com/SquareBracketAssociates/UpdatedPharoByExample'), '

One chapter of particular interest is the one that provides a quick tour of the environment: 

', (self url: 'https://ci.inria.fr/pharo-contribution/job/UpdatedPharoByExample/lastSuccessfulBuild/artifact/book-result/PharoTour/PharoTour.pdf')
]

{ #category : #defaults }
WelcomeHelp class >> fastNetworkDefaults [
	"Allow to display catalog projects in spotter on regular and fast networks"
	CatalogSettings displayCatalogProjectsInSpotter: true.
	self inform: 'Catalog projects accessible through Spotter'
]

{ #category : #pages }
WelcomeHelp class >> gettingHelp [
	^ HelpTopic 
		title: 'Getting Help'
		contents: (self heading: 'Getting Help'),
		'Pharo has a vibrant community that shares knowledge in different ways: 

- The "Pharo Users" mailing list: 
	', (self url: 'http://lists.pharo.org/mailman/listinfo/pharo-users_lists.pharo.org'), '
- The "Pharo Discord channel": 
	', 	(self url: 'http://discord.gg/Sj2rhxn'), '
- The "Pharo IRC Channel": 
	', (self url: 'irc.freenode.net, #pharo channel '), '

You can find more information, lists to browse/suscribe and places to share code at: 

', (self url: 'http://pharo.org/community')
]

{ #category : #pages }
WelcomeHelp class >> learn [
	^ HelpTopic 
		title: 'Learn Pharo'
		contents: (self heading: 'Learn Pharo'), 		
'You can learn Pharo by clicking on the following expression: 
	
', (self doItFrom: 'ProfStef go.'), 

(self subheading: 'MOOC'), 
'Pharo has an excellent MOOC (Massive Open Online Course). You can find more information here: 

', (self url: 'http://mooc.pharo.org'), 

(self subheading: 'Books'), 
'There are several free Pharo books that can be download here: 

', (self url: 'http://books.pharo.org'), '

A very interesting starting point would be looking into the "Updated Pharo by Example" free book. It is still a work in progress, but most of it is already done. You can find the book here: 

', (self url: 'https://github.com/SquareBracketAssociates/UpdatedPharoByExample'), '
'
]

{ #category : #showing }
WelcomeHelp class >> open [
	<script>
	^ (HelpBrowser openOn: self) next
]

{ #category : #showing }
WelcomeHelp class >> openForRelease [
	<script>
	| browser window findBlock |
	
	findBlock := [ :each | (each isKindOf: SystemWindow) and: [ each label = self bookName ] ]. 
	World submorphs 
		detect: findBlock 
		ifFound: [ :oldWindow | oldWindow delete ].
	browser := self open.
	window := browser dependents detect: findBlock.
	window extent: 700@400.
	window center: Display extent / 2
]

{ #category : #'defaults - actions' }
WelcomeHelp class >> openNetworkSettings [

	| browser window path |	
	browser := SettingBrowser new 
		changePackageSet: { 
			#'Network-Kernel' asPackage.
	 };
		yourself.		 
	window := browser open.
	path := (window submorphs detect: [ :each | (each isKindOf: MorphTreeMorph) ]) nodeList.
	browser expandNodePath: path  
]

{ #category : #accessing }
WelcomeHelp class >> pages [
	^ #(welcome changeLog learn exploreEnvironment useExternalPackages documentation gettingHelp)
]

{ #category : #pages }
WelcomeHelp class >> pharoVersionString [

	| version | 
	
	version := SystemVersion current.

	^ String streamContents: [ :aStream  |
		version hasValidBuildNumber ifTrue: [ 
			aStream nextPutAll: 'build: '.
			version build printOn: aStream.
			aStream nextPutAll: ', '. ].
		aStream nextPutAll: 'commit: '.
		aStream nextPutAll: version commitHashShort ]
]

{ #category : #defaults }
WelcomeHelp class >> slowNetworkDefaults [
	"Do not display network bound catalog projects in spotter to keep it responsive."
	CatalogSettings displayCatalogProjectsInSpotter: false.
	self inform: 'Catalog projects not accessible through Spotter due to slow network. Use search in catalog tool to load external packages.'
]

{ #category : #pages }
WelcomeHelp class >> useExternalPackages [
	^ HelpTopic 
		title: 'Using External Packages'
		contents: (self heading: 'Using External Packages'), 'Pharo already comes pre-loaded with a rich set of packages that you can use to explore the system and develop your own applications. However there is also a huge library of user contributed projects that you can also load using the "Catalog Browser". To open it click on the following expression:
		
', (self doItFrom: 'CatalogBrowser open.'), '

This browser is also accessible from the World>Tools>Catalog Browser menu (just click the desktop, select Tools, and then Catalog Browser).

Catalog projects can be browsed online: 

', (self url: 'http://catalog.pharo.org'), '

You can also a rough list (not very friendly) of many packages available stored in smalltalkhub repository:

', (self url: 'http://smalltalkhub.com/list'), '

(this list is not a compendium of packages for Pharo but is a good place to start looking for something in particular and which happens to not be present in the catalog).

The catalog can be enabled in Spotter by enabling the "Display catalog projects in Spotter" system preference.
'
]

{ #category : #pages }
WelcomeHelp class >> welcome [
	^ HelpTopic 
		title: 'Welcome to ', Smalltalk version
		contents: (self heading: Smalltalk version withSubtitle: self pharoVersionString), 

'Welcome to Pharo, an immersive live programming environment.

Pharo is a pure object-oriented programming language and a powerful environment, focused on simplicity and immediate feedback (think IDE and OS rolled into one).

For more information, please visit here: ', (self url: 'http://pharo.org'),
(self subheading: 'Quick setup'),
'Choose your preferred color theme: ',
(self doItFrom: 'PharoLightTheme beCurrent' text: 'White Theme'), ' or ',
(self doItFrom: 'PharoDarkTheme beCurrent' text: 'Dark Theme'), ' 

Click if you have access to a: ',
(self doItFrom: 'WelcomeHelp fastNetworkDefaults' text: 'regular network connection'), ' or ',
(self doItFrom: 'WelcomeHelp slowNetworkDefaults' text: 'slow network'), '
or if need to ',
(self doItFrom: 'WelcomeHelp openNetworkSettings' text: 'setup a network proxy'), '.

You can also ',
(self doItFrom: 'SettingBrowser open' text: 'apply many other other settings'), ' or extend the image ',
(self doItFrom: 'CatalogBrowser open' text: 'by loading additional external packages from catalog'), '.'
]
