Class {
	#name : #BaselineOfXPathForGlamorousToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfXPathForGlamorousToolkit
}

{ #category : #baseline }
BaselineOfXPathForGlamorousToolkit >> baseline: spec [
	<baseline>
	
	spec
		for: #common do: [
			
			"Dependencies"
			spec
				baseline: 'XMLParserForGlamorousToolkit' with: [ 
					spec repository: 'github://feenkcom/XML-XMLParser:gt/src' ]. 
				
			"Packages"
			spec 
				package: 'XPath-Core' with: [ 
					spec requires: #('XMLParserForGlamorousToolkit') ];
				package: 'XPath-Tests' with: [ 
					spec requires: #('XPath-Core') ]
	]
]
