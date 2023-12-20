Class {
	#name : #BaselineOfXPathForGlamorousToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfXPathForGlamorousToolkit
}

{ #category : #baseline }
BaselineOfXPathForGlamorousToolkit >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'XMLParserForGlamorousToolkit' with: [
				spec repository: 'github://feenkcom/XML-XMLParser:v0.6.0/src' ].

		spec package: 'XPath-Core' with: [
			spec requires: #('XMLParserForGlamorousToolkit') ].
		spec package: 'XPath-Tests' with: [
			spec requires: #('XPath-Core') ].
	]
]
