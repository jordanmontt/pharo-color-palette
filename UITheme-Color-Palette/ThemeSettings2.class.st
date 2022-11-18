Class {
	#name : #ThemeSettings2,
	#superclass : #Model,
	#instVars : [
		'windowColor',
		'selectionColor',
		'autoSelectionColor',
		'buttonColor',
		'scrollbarColor',
		'standardColorsOnly',
		'progressBarColor',
		'progressBarProgressColor',
		'menuColor',
		'menuTitleColor',
		'preferGradientFill',
		'preferRoundCorner',
		'autoMenuColor',
		'flatMenu',
		'fadedBackgroundWindows',
		'fastDragging',
		'animationSettings',
		'scrollBarThickness',
		'balloonHelpEnabled',
		'tabAmongFields',
		'balloonHelpDelayTime',
		'maxBalloonHelpLineLength',
		'desktopImageLayout',
		'menuSelectionColor',
		'findReplaceSelectionColor',
		'selectionBarColor',
		'unfocusedSelectionColor',
		'menuSelectionTextColor',
		'selectionTextColor',
		'secondarySelectionTextColor',
		'findReplaceSelectionTextColor',
		'labelAreaLayout'
	],
	#category : #'UITheme-Color-Palette'
}

{ #category : #accessing }
ThemeSettings2 >> animationSettings [
	^ animationSettings ifNil: [animationSettings := AnimationSettings new]
]

{ #category : #settings }
ThemeSettings2 >> applySettingsFrom: aThemeSettings [
	"Change the settings to be those of aThemeSettings."
	
	self
		windowColor: aThemeSettings windowColor;
		selectionColor: aThemeSettings selectionColor;
		autoSelectionColor: aThemeSettings autoSelectionColor
]

{ #category : #updating }
ThemeSettings2 >> applyToDisplayedWindows [
			
	(SystemWindow withAllSubclasses
		flatCollect: [ :sysWinClass | sysWinClass allInstances ])
			select: [ :sysWin | sysWin isDisplayed ]
				thenDo: [ :dispSysWin | dispSysWin themeChanged ]
]

{ #category : #menu }
ThemeSettings2 >> autoMenuColor [
	"Answer the value of autoMenuColor"

	^autoMenuColor ifNil: [^false]
]

{ #category : #menu }
ThemeSettings2 >> autoMenuColor: aBoolean [
	"Answer the value of autoMenuColor"

	autoMenuColor := aBoolean
]

{ #category : #accessing }
ThemeSettings2 >> autoSelectionColor [
	"Answer the value of autoSelectionColor"

	^autoSelectionColor ifNil: [^true]
]

{ #category : #accessing }
ThemeSettings2 >> autoSelectionColor: anObject [
	"Set the value of autoSelectionColor"

	autoSelectionColor := anObject.
	self
		changed: #autoSelectionColor;
		changed: #manualSelectionColor;
		changed: #selectionColor
]

{ #category : #balloon }
ThemeSettings2 >> balloonHelpDelayTime [
	^ balloonHelpDelayTime ifNil: [balloonHelpDelayTime := 800]
]

{ #category : #balloon }
ThemeSettings2 >> balloonHelpDelayTime: anInteger [
	balloonHelpDelayTime := anInteger
]

{ #category : #balloon }
ThemeSettings2 >> balloonHelpEnabled [
	^ balloonHelpEnabled ifNil: [balloonHelpEnabled := true]
]

{ #category : #balloon }
ThemeSettings2 >> balloonHelpEnabled: aBoolean [
	balloonHelpEnabled := aBoolean
]

{ #category : #accessing }
ThemeSettings2 >> basicSelectionColor [
	"Answer the recorded selection color rather than derived."

	^selectionColor
]

{ #category : #button }
ThemeSettings2 >> buttonColor [
	"Answer the value of buttonColor"

	^buttonColor ifNil: [self windowColor]
]

{ #category : #button }
ThemeSettings2 >> buttonColor: anObject [
	"Set the value of buttonColor"

	buttonColor := anObject
]

{ #category : #button }
ThemeSettings2 >> defaultButtonColor [
	"Answer the default button colour."

	^Color gray
]

{ #category : #accessing }
ThemeSettings2 >> defaultScrollbarColor [
	"Answer the default scrollbar colour."

	^Color gray
]

{ #category : #accessing }
ThemeSettings2 >> defaultSelectionColor [
	"Answer the default selection colour."

	^self defaultWindowColor
]

{ #category : #accessing }
ThemeSettings2 >> defaultWindowColor [
	"Answer the default window colour."

	^ Color lightGray
]

{ #category : #menu }
ThemeSettings2 >> derivedMenuColor [
	"Answer a selection colour based on the window color."

	| autoColor worldColor |
	autoColor := self autoMenuColor 
				and: [Display depth > 4
						and: [(worldColor := self currentWorld color) isColor]].

	^ autoColor
				ifTrue: [worldColor luminance > 0.7
						ifTrue: [worldColor mixed: 0.85 with: Color black]
						ifFalse: [worldColor mixed: 0.4 with: Color white]]
				ifFalse: [self menuColor].
]

{ #category : #accessing }
ThemeSettings2 >> derivedSelectionColor [
	"Answer a selection colour based on the window color."

	^self windowColor whiter lighter
]

{ #category : #accessing }
ThemeSettings2 >> desktopImageLayout [
	"Answer the layout symbol for any desktop image.
	See AlphaImageMorph>>layoutSymbols."

	^desktopImageLayout ifNil: [desktopImageLayout := #scaled]
]

{ #category : #accessing }
ThemeSettings2 >> desktopImageLayout: aSymbol [
	"Set the layout symbol for any desktop image.
	See AlphaImageMorph>>layoutSymbols."

	desktopImageLayout := aSymbol
]

{ #category : #accessing }
ThemeSettings2 >> fadedBackgroundWindows [
	^ fadedBackgroundWindows ifNil: [fadedBackgroundWindows := true]
]

{ #category : #accessing }
ThemeSettings2 >> fadedBackgroundWindows: aBoolean [
	fadedBackgroundWindows := aBoolean
]

{ #category : #menu }
ThemeSettings2 >> fallbackMenuColor [
	"Answer the value of menuColor"

	^ self preferGradientFill ifTrue: [Color lightGray] ifFalse: [Color lightGray muchLighter]
]

{ #category : #accessing }
ThemeSettings2 >> fastDragging [ 
		^ fastDragging ifNil: [fastDragging := false]
]

{ #category : #accessing }
ThemeSettings2 >> fastDragging: aBoolean [
		fastDragging := aBoolean
]

{ #category : #accessing }
ThemeSettings2 >> findReplaceSelectionColor [
	"Answer the value of the selectionColor for find/replace"

	^ findReplaceSelectionColor ifNil: [findReplaceSelectionColor := Color orange alpha: 0.4]
]

{ #category : #accessing }
ThemeSettings2 >> findReplaceSelectionColor: anColor [
	findReplaceSelectionColor := anColor
]

{ #category : #accessing }
ThemeSettings2 >> findReplaceSelectionTextColor [
	"Answer the value of the selectionTextColor for find/replace"

	^ findReplaceSelectionTextColor 
		ifNil: [ self findReplaceSelectionColor contrastingBlackAndWhiteColor ]
]

{ #category : #accessing }
ThemeSettings2 >> findReplaceSelectionTextColor: aColor [
	"Answer the value of the selectionTextColor for find/replace"

	findReplaceSelectionTextColor := aColor
]

{ #category : #menu }
ThemeSettings2 >> flatMenu [ 
		^ flatMenu ifNil: [flatMenu := false]
]

{ #category : #menu }
ThemeSettings2 >> flatMenu: aBoolean [
		flatMenu := aBoolean
]

{ #category : #settings }
ThemeSettings2 >> fromConfiguration: tree [
	"Update the settings from the given tree."
	
	(tree at: #windowColor ifAbsent: []) ifNotNil: [:v | self windowColor: v].
	(tree at: #autoSelectionColor ifAbsent: []) ifNotNil: [:v | self autoSelectionColor: v].
	(tree at: #selectionColor ifAbsent: []) ifNotNil: [:v | self selectionColor: v]
]

{ #category : #accessing }
ThemeSettings2 >> haveFindReplaceSelectionTextColor [

	^ findReplaceSelectionTextColor notNil
]

{ #category : #accessing }
ThemeSettings2 >> haveSecondarySelectionTextColor [
	"Answer the value of selectionTextColor"

	^ secondarySelectionTextColor notNil
]

{ #category : #accessing }
ThemeSettings2 >> haveSelectionTextColor [
	
	^ selectionTextColor notNil
]

{ #category : #initialization }
ThemeSettings2 >> initialize [
	"Initialize the receiver."

	super initialize.
	self
		autoSelectionColor: true;
		windowColor: self defaultWindowColor;
		selectionColor: self defaultSelectionColor;
		buttonColor: self defaultButtonColor;
		scrollbarColor: self defaultScrollbarColor;
		standardColorsOnly: false
]

{ #category : #accessing }
ThemeSettings2 >> labelAreaLayout [
	"Answer the value of labelAreaLayout"

	^labelAreaLayout  ifNil: [labelAreaLayout  := #platformDependent]
]

{ #category : #accessing }
ThemeSettings2 >> labelAreaLayout: aSelector [
	"Set the value of labelAreaLayout"

	labelAreaLayout  := aSelector.
	self applyToDisplayedWindows
]

{ #category : #accessing }
ThemeSettings2 >> manualSelectionColor [
	"Answer the inverse of autoSelectionColor."

	^self autoSelectionColor not
]

{ #category : #balloon }
ThemeSettings2 >> maxBalloonHelpLineLength [
	^ maxBalloonHelpLineLength ifNil: [maxBalloonHelpLineLength := 40]
]

{ #category : #balloon }
ThemeSettings2 >> maxBalloonHelpLineLength: anInteger [
	maxBalloonHelpLineLength := anInteger
]

{ #category : #menu }
ThemeSettings2 >> menuBorderColor [
	"Answer the value of menuColor"

	^ self flatMenu  
		ifFalse: [#raised]
		ifTrue: [self derivedMenuColor twiceDarker]
]

{ #category : #menu }
ThemeSettings2 >> menuBorderWidth [
	"Answer the value of menuColor"

	^ 2
]

{ #category : #menu }
ThemeSettings2 >> menuColor [
	"Answer the value of menuColor"

	^ menuColor ifNil: [self fallbackMenuColor]
]

{ #category : #menu }
ThemeSettings2 >> menuColor: anObject [
	"Set the value of menuColor"

	menuColor := anObject
]

{ #category : #menu }
ThemeSettings2 >> menuKeyboardControl [
	^ true
]

{ #category : #menu }
ThemeSettings2 >> menuKeyboardFocusColor [
	^ (Color r: 0.6 g: 1.0 b: 1.0)
]

{ #category : #menu }
ThemeSettings2 >> menuSelectionColor [
	"Answer the value of menuSelectionColor"

	^menuSelectionColor ifNil: [self derivedMenuColor darker]
]

{ #category : #menu }
ThemeSettings2 >> menuSelectionColor: aColor [
	"Set the base value of menuSelectionColor.
	If nil, actual color used will be based on derived menu color."

	menuSelectionColor := aColor
]

{ #category : #menu }
ThemeSettings2 >> menuSelectionTextColor [
	"Answer the value of menuSelectionTextColor"

	^menuSelectionTextColor ifNil: [menuSelectionTextColor := Color black]
]

{ #category : #menu }
ThemeSettings2 >> menuSelectionTextColor: aColor [
	"Answer the value of menuSelectionTextColor"

	menuSelectionTextColor := aColor
]

{ #category : #menu }
ThemeSettings2 >> menuShadowColor [
	^ Color r: 0.0 g: 0.0 b: 0.0 alpha: 0.666
]

{ #category : #menu }
ThemeSettings2 >> menuTitleBorderColor [
	^ self flatMenu
		ifFalse: [#inset]
		ifTrue: [self derivedMenuColor muchDarker]
]

{ #category : #menu }
ThemeSettings2 >> menuTitleColor [
	"Answer the value of menuTitleColor"

	Display depth = 1 ifTrue: [^ Color white].
	Display depth = 2 ifTrue: [^ Color gray].
	^menuTitleColor 
		ifNil: [self menuColor 
				ifNil: [Color gray] 
				ifNotNil: [:mc | self preferGradientFill 
					ifTrue: [mc]
					ifFalse: [mc twiceDarker]]]
]

{ #category : #menu }
ThemeSettings2 >> menuTitleColor: anObject [
	"Set the value of menuTitleColor"

	menuTitleColor := anObject
]

{ #category : #accessing }
ThemeSettings2 >> preferGradientFill [ 
	"Answer the value of preferGradientFill "

	^preferGradientFill  ifNil: [preferGradientFill := self preferGradientFillByDefault]
]

{ #category : #accessing }
ThemeSettings2 >> preferGradientFill: aBoolean [
	"Set the value of preferGradientFill "

	preferGradientFill  := aBoolean
]

{ #category : #accessing }
ThemeSettings2 >> preferGradientFillByDefault [
	^ true
]

{ #category : #accessing }
ThemeSettings2 >> preferRoundCorner [
	"Answer the value of preferRoundCorner"

	^preferRoundCorner  ifNil: [preferRoundCorner := self preferRoundCornerByDefault]
]

{ #category : #accessing }
ThemeSettings2 >> preferRoundCorner: aBoolean [
	"Set the value of preferRoundCorner"

	preferRoundCorner := aBoolean.
	self applyToDisplayedWindows
]

{ #category : #accessing }
ThemeSettings2 >> preferRoundCornerByDefault [
	^ true
]

{ #category : #progressbar }
ThemeSettings2 >> progressBarColor [
	"Answer the value of progressBarColor"

	^progressBarColor ifNil: [progressBarColor := self derivedMenuColor muchLighter]
]

{ #category : #progressbar }
ThemeSettings2 >> progressBarColor: anObject [
	"Set the value of progressBarColor"

	progressBarColor := anObject
]

{ #category : #progressbar }
ThemeSettings2 >> progressBarProgressColor [
	"Answer the value of progressBarProgressColor"

	^progressBarProgressColor ifNil: [self menuTitleColor]
]

{ #category : #progressbar }
ThemeSettings2 >> progressBarProgressColor: anObject [
	"Set the value of progressBarProgressColor"

	progressBarProgressColor := anObject
]

{ #category : #accessing }
ThemeSettings2 >> scrollBarThickness [
	^ scrollBarThickness ifNil: [scrollBarThickness := 14]
]

{ #category : #accessing }
ThemeSettings2 >> scrollbarColor [
	"Answer the value of scrollbarColor"

	^scrollbarColor ifNil: [self windowColor]
]

{ #category : #accessing }
ThemeSettings2 >> scrollbarColor: anObject [
	"Set the value of scrollbarColor"

	scrollbarColor := anObject
]

{ #category : #accessing }
ThemeSettings2 >> secondarySelectionTextColor [
	"Answer the value of selectionTextColor"

	^ secondarySelectionTextColor 
		ifNil: [self theme secondarySelectionColor contrastingBlackAndWhiteColor ]
]

{ #category : #accessing }
ThemeSettings2 >> secondarySelectionTextColor: aColor [
	"set the value of selectionTextColor"

	secondarySelectionTextColor := aColor
]

{ #category : #accessing }
ThemeSettings2 >> selectionBarColor [
	^ selectionBarColor ifNil: [selectionBarColor := self selectionColor alpha: 0.06]
]

{ #category : #accessing }
ThemeSettings2 >> selectionBarColor: aColor [
	selectionBarColor := aColor
]

{ #category : #accessing }
ThemeSettings2 >> selectionColor [
	"Answer the value of selectionColor"
	
	Display depth = 1 ifTrue: [^ Color veryLightGray].
	Display depth = 2 ifTrue: [^ Color gray].
	^self autoSelectionColor
		ifTrue: [self derivedSelectionColor]
		ifFalse: [selectionColor ifNil: [selectionColor := Color r: 0.0 g: 0.0 b: 0.8 alpha: 0.25]]
]

{ #category : #accessing }
ThemeSettings2 >> selectionColor: anObject [
	"Set the value of selectionColor"
	selectionColor := anObject
]

{ #category : #accessing }
ThemeSettings2 >> selectionTextColor [
	"Answer the value of selectionTextColor"
	
	^selectionTextColor ifNil: [Color black ]
]

{ #category : #accessing }
ThemeSettings2 >> selectionTextColor: aColor [
	selectionTextColor := aColor
]

{ #category : #accessing }
ThemeSettings2 >> standardColorsOnly [
	"Answer the value of standardColorsOnly"
 
	^standardColorsOnly ifNil: [^false]
]

{ #category : #accessing }
ThemeSettings2 >> standardColorsOnly: anObject [
	"Set the value of standardColorsOnly"

	standardColorsOnly := anObject
]

{ #category : #accessing }
ThemeSettings2 >> tabAmongFields [
	^ tabAmongFields ifNil: [tabAmongFields := true]
]

{ #category : #accessing }
ThemeSettings2 >> tabAmongFields: aBoolean [
	tabAmongFields := aBoolean
]

{ #category : #settings }
ThemeSettings2 >> toConfiguration: tree [
	"Update the tree from the receiver."
	
	tree at: #windowColor put: self windowColor.
	tree at: #autoSelectionColor put: self autoSelectionColor.
	tree at: #selectionColor put: self basicSelectionColor
]

{ #category : #accessing }
ThemeSettings2 >> unfocusedSelectionColor [
	"Answer the value of selectionColor when the window have not the focus"

	^ unfocusedSelectionColor ifNil: [unfocusedSelectionColor := self selectionColor alphaMixed: 0.7 with: Color veryLightGray lighter]
]

{ #category : #accessing }
ThemeSettings2 >> unfocusedSelectionColor: aColor [
	"Answer the value of selectionColor when the window have not the focus"

	unfocusedSelectionColor := aColor
]

{ #category : #accessing }
ThemeSettings2 >> windowColor [
	"Answer the value of windowColor"

	^ windowColor ifNil: [Color lightGray]
]

{ #category : #accessing }
ThemeSettings2 >> windowColor: anObject [
	"Set the value of windowColor"

	windowColor := anObject.
	self changed: #windowColor.
	self autoSelectionColor ifTrue: [self changed: #selectionColor]
]
