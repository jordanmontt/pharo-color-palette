Class {
	#name : #UIThemePalette,
	#superclass : #Object,
	#instVars : [
		'colorConfigurator',
		'paletteDictionary'
	],
	#category : #'UITheme-Color-Palette'
}

{ #category : #colors }
UIThemePalette >> backgroundColor [

	^ paletteDictionary at: #backgroundColor ifAbsentPut: [ colorConfigurator backgroundColor ]
]

{ #category : #colors }
UIThemePalette >> badgeColor [

	^ paletteDictionary at: #badgeColor ifAbsentPut: [ colorConfigurator badgeColor ]
]

{ #category : #colors }
UIThemePalette >> badgeTextColor [

	^ paletteDictionary at: #badgeTextColor ifAbsentPut: [ colorConfigurator badgeTextColor ]
]

{ #category : #colors }
UIThemePalette >> balloonBackgroundColor [

	^ paletteDictionary at: #balloonBackgroundColor ifAbsentPut: [ colorConfigurator balloonBackgroundColor ]
]

{ #category : #colors }
UIThemePalette >> baseColor [

	^ paletteDictionary at: #baseColor ifAbsentPut: [ colorConfigurator baseColor ]
]

{ #category : #colors }
UIThemePalette >> basePassiveBackgroundColor [

	^ paletteDictionary at: #basePassiveBackgroundColor ifAbsentPut: [ colorConfigurator basePassiveBackgroundColor ]
]

{ #category : #colors }
UIThemePalette >> baseSelectionColor [

	^ paletteDictionary at: #baseSelectionColor ifAbsentPut: [ colorConfigurator baseSelectionColor ]
]

{ #category : #colors }
UIThemePalette >> borderColor [

	^ paletteDictionary at: #borderColor ifAbsentPut: [ colorConfigurator borderColor ]
]

{ #category : #colors }
UIThemePalette >> buttonColor [

	^ paletteDictionary at: #buttonColor ifAbsentPut: [ colorConfigurator buttonColor ]
]

{ #category : #colors }
UIThemePalette >> caretColor [

	^ paletteDictionary at: #caretColor ifAbsentPut: [ colorConfigurator caretColor ]
]

{ #category : #colors }
UIThemePalette >> classExtensionColor [

	^ paletteDictionary at: #classExtensionColor ifAbsentPut: [ colorConfigurator classExtensionColor ]
]

{ #category : #accessing }
UIThemePalette >> colorConfigurator: aColorConfigurator [

	colorConfigurator := aColorConfigurator
]

{ #category : #colors }
UIThemePalette >> dangerTextColor [

	^ paletteDictionary at: #dangerTextColor ifAbsentPut: [ colorConfigurator dangerTextColor ]
]

{ #category : #colors }
UIThemePalette >> darkBaseColor [

	^ paletteDictionary at: #darkBaseColor ifAbsentPut: [ colorConfigurator darkBaseColor ]
]

{ #category : #colors }
UIThemePalette >> desktopColor [

	^ paletteDictionary at: #desktopColor ifAbsentPut: [ colorConfigurator desktopColor ]
]

{ #category : #colors }
UIThemePalette >> diffAdditionalLineBackgroundColor [

	^ paletteDictionary at: #diffAdditionalLineBackgroundColor ifAbsentPut: [ colorConfigurator diffAdditionalLineBackgroundColor ]
]

{ #category : #colors }
UIThemePalette >> diffEdgeColor [

	^ paletteDictionary at: #diffEdgeColor ifAbsentPut: [ colorConfigurator diffEdgeColor ]
]

{ #category : #colors }
UIThemePalette >> diffModificatedLineBackgroundColor [

	^ paletteDictionary at: #diffModificatedLineBackgroundColor ifAbsentPut: [ colorConfigurator diffModificatedLineBackgroundColor ]
]

{ #category : #colors }
UIThemePalette >> diffRemovedLinesBackgroundColor [

	^ paletteDictionary at: #diffRemovedLinesBackgroundColor ifAbsentPut: [ colorConfigurator diffRemovedLinesBackgroundColor ]
]

{ #category : #colors }
UIThemePalette >> disabledColor [

	^ paletteDictionary at: #disabledColor ifAbsentPut: [ colorConfigurator disabledColor ]
]

{ #category : #colors }
UIThemePalette >> dropListNormalFillStyleFor: anObject [

	^ paletteDictionary at: #dropListNormalFillStyleFor: ifAbsentPut: [ colorConfigurator dropListNormalFillStyleFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> dropListNormalListFillStyleFor: anObject [

	^ paletteDictionary at: #dropListNormalListFillStyleFor: ifAbsentPut: [ colorConfigurator dropListNormalListFillStyleFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> enabledColor [

	^ paletteDictionary at: #enabledColor ifAbsentPut: [ colorConfigurator enabledColor ]
]

{ #category : #colors }
UIThemePalette >> errorPopperBackgroundColor [

	^ paletteDictionary at: #errorPopperBackgroundColor ifAbsentPut: [ colorConfigurator errorPopperBackgroundColor ]
]

{ #category : #initialization }
UIThemePalette >> initialize [

	super initialize.
	paletteDictionary := Dictionary new
]

{ #category : #colors }
UIThemePalette >> lessConspicuousColorFrom: anObject [

	^ paletteDictionary at: #lessConspicuousColorFrom: ifAbsentPut: [ colorConfigurator lessConspicuousColorFrom: anObject  ]
]

{ #category : #colors }
UIThemePalette >> lightBackgroundColor [

	^ paletteDictionary at: #lightBackgroundColor ifAbsentPut: [ colorConfigurator lightBackgroundColor ]
]

{ #category : #colors }
UIThemePalette >> lightBaseColor [

	^ paletteDictionary at: #lightBaseColor ifAbsentPut: [ colorConfigurator lightBaseColor ]
]

{ #category : #colors }
UIThemePalette >> lightSelectionColor [

	^ paletteDictionary at: #lightSelectionColor ifAbsentPut: [ colorConfigurator lightSelectionColor ]
]

{ #category : #colors }
UIThemePalette >> lineNumberColor [

	^ paletteDictionary at: #lineNumberColor ifAbsentPut: [ colorConfigurator lineNumberColor ]
]

{ #category : #colors }
UIThemePalette >> listNormalFillStyleFor: anObject [

	^ paletteDictionary at: #listNormalFillStyleFor: ifAbsentPut: [ colorConfigurator listNormalFillStyleFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> listTextColor [

	^ paletteDictionary at: #listTextColor ifAbsentPut: [ colorConfigurator listTextColor ]
]

{ #category : #colors }
UIThemePalette >> menuBorderColor [

	^ paletteDictionary at: #menuBorderColor ifAbsentPut: [ colorConfigurator menuBorderColor ]
]

{ #category : #colors }
UIThemePalette >> menuItemDisabledTextColorFor: anObject [

	^ paletteDictionary at: #menuItemDisabledTextColorFor: ifAbsentPut: [ colorConfigurator menuItemDisabledTextColorFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> mouseOverColor [

	^ paletteDictionary at: #mouseOverColor ifAbsentPut: [ colorConfigurator mouseOverColor ]
]

{ #category : #colors }
UIThemePalette >> paginatorSelectionColor [

	^ paletteDictionary at: #paginatorSelectionColor ifAbsentPut: [ colorConfigurator paginatorSelectionColor ]
]

{ #category : #colors }
UIThemePalette >> popoverButtonColor [

	^ paletteDictionary at: #popoverButtonColor ifAbsentPut: [ colorConfigurator popoverButtonColor ]
]

{ #category : #colors }
UIThemePalette >> scrollbarColor [

	^ paletteDictionary at: #scrollbarColor ifAbsentPut: [ colorConfigurator scrollbarColor ]
]

{ #category : #colors }
UIThemePalette >> secondarySelectionColor [

	^ paletteDictionary at: #secondarySelectionColor ifAbsentPut: [ colorConfigurator secondarySelectionColor ]
]

{ #category : #colors }
UIThemePalette >> selectionColor [

	^ paletteDictionary at: #selectionColor ifAbsentPut: [ colorConfigurator selectionColor ]
]

{ #category : #colors }
UIThemePalette >> selectionTextColor [

	^ paletteDictionary at: #selectionTextColor ifAbsentPut: [ colorConfigurator selectionTextColor ]
]

{ #category : #colors }
UIThemePalette >> sliderNormalFillStyleFor: anObject [

	^ paletteDictionary at: #sliderNormalFillStyleFor: ifAbsentPut: [ colorConfigurator sliderNormalFillStyleFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> spotlightWindowColor [

	^ paletteDictionary at: #spotlightWindowColor ifAbsentPut: [ colorConfigurator spotlightWindowColor ]
]

{ #category : #colors }
UIThemePalette >> successTextColor [

	^ paletteDictionary at: #successTextColor ifAbsentPut: [ colorConfigurator successTextColor ]
]

{ #category : #colors }
UIThemePalette >> taskbarItemLabelColorForCollapsed: anObject [

	^ paletteDictionary at: #taskbarItemLabelColorForCollapsed: ifAbsentPut: [ colorConfigurator taskbarItemLabelColorForCollapsed: anObject  ]
]

{ #category : #colors }
UIThemePalette >> taskbarItemLabelColorForExpanded: anObject [

	^ paletteDictionary at: #taskbarItemLabelColorForExpanded: ifAbsentPut: [ colorConfigurator taskbarItemLabelColorForExpanded: anObject  ]
]

{ #category : #colors }
UIThemePalette >> testColorError [

	^ paletteDictionary at: #testColorError ifAbsentPut: [ colorConfigurator testColorError ]
]

{ #category : #colors }
UIThemePalette >> testColorFailure [

	^ paletteDictionary at: #testColorFailure ifAbsentPut: [ colorConfigurator testColorFailure ]
]

{ #category : #colors }
UIThemePalette >> testColorPassing [

	^ paletteDictionary at: #testColorPassing ifAbsentPut: [ colorConfigurator testColorPassing ]
]

{ #category : #colors }
UIThemePalette >> textColor [

	^ paletteDictionary at: #textColor ifAbsentPut: [ colorConfigurator textColor ]
]

{ #category : #colors }
UIThemePalette >> textColorForNonStandardBackground [

	^ paletteDictionary at: #textColorForNonStandardBackground ifAbsentPut: [ colorConfigurator textColorForNonStandardBackground ]
]

{ #category : #colors }
UIThemePalette >> textEditorNormalFillStyleFor: anObject [

	^ paletteDictionary at: #textEditorNormalFillStyleFor: ifAbsentPut: [ colorConfigurator textEditorNormalFillStyleFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> unfocusedSelectionColor [

	^ paletteDictionary at: #unfocusedSelectionColor ifAbsentPut: [ colorConfigurator unfocusedSelectionColor ]
]

{ #category : #colors }
UIThemePalette >> veryLightSelectionColor [

	^ paletteDictionary at: #veryLightSelectionColor ifAbsentPut: [ colorConfigurator veryLightSelectionColor ]
]

{ #category : #colors }
UIThemePalette >> warningTextColor [

	^ paletteDictionary at: #warningTextColor ifAbsentPut: [ colorConfigurator warningTextColor ]
]

{ #category : #colors }
UIThemePalette >> windowActiveLabelFillStyleFor: anObject [

	^ paletteDictionary at: #windowActiveLabelFillStyleFor: ifAbsentPut: [ colorConfigurator windowActiveLabelFillStyleFor: anObject  ]
]

{ #category : #colors }
UIThemePalette >> windowColor [

	^ paletteDictionary at: #windowColor ifAbsentPut: [ colorConfigurator windowColor ]
]
