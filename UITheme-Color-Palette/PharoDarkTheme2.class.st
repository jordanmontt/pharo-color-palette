Class {
	#name : #PharoDarkTheme2,
	#superclass : #UITheme2,
	#category : #'UITheme-Color-Palette'
}

{ #category : #accessing }
PharoDarkTheme2 class >> baseColor [
	^ Color veryDarkGray
]

{ #category : #accessing }
PharoDarkTheme2 class >> basePassiveBackgroundColor [
	^ Color darkGray
]

{ #category : #accessing }
PharoDarkTheme2 class >> baseSelectionColor [
	^ Color r: 97 g: 163 b: 225 range: 255
]

{ #category : #accessing }
PharoDarkTheme2 class >> darkBaseColor [
	^ Color veryDarkGray
]

{ #category : #accessing }
PharoDarkTheme2 class >> isAbstract [
	"Answer whether the receiver is considered to be abstract."

	^false
]

{ #category : #accessing }
PharoDarkTheme2 class >> lightBaseColor [
	^ Color darkGray
]

{ #category : #accessing }
PharoDarkTheme2 class >> lightSelectionColor [
	^ Color r: 175 g: 213 b: 250 range: 255
]

{ #category : #settings }
PharoDarkTheme2 class >> setPreferredPreferences [
	"NECPreferences 
		expandPrefixes: true;
		popupShowWithShortcut: Character tab asShortcut."
]

{ #category : #accessing }
PharoDarkTheme2 class >> themeName [
	^ 'Pharo Dark'
]

{ #category : #accessing }
PharoDarkTheme2 class >> veryLightSelectionColor [
	^ self lightSelectionColor muchLighter
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> backgroundColor [
	^ Color r: 0.130 g: 0.130 b: 0.130
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> balloonBackgroundColor [

	^ self darkBaseColor lighter
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> borderColor [ 
	^ Color darkGray darker darker darker
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> buttonColor [
	^ self backgroundColor lighter lighter
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> buttonDisabledBorderStyleFor: aButton [

	"Return the disabled button fillStyle for the given color."

	self flag: 'not returning an object color'.
	^ BorderStyle width: 0 color: Color transparent
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> buttonDisabledFillStyleFor: aButton [

	"Return the disabled button fillStyle for the given color."

	self flag: 'not returning an object color'.
	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles - buttons' }
PharoDarkTheme2 >> buttonNormalBorderStyleFor: aButton [
	"Return the normal button borderStyle for the given button."
	self flag: 'not returning an object color'.
	(aButton valueOfProperty: #noBorder ifAbsent: [ false ]) 
		ifTrue: [ 
			^ SimpleBorderStyle new 
				width: 0; 
				baseColor: Color transparent ].
	
	^ SimpleBorderStyle new
		width: 1;
		baseColor: self buttonColor lighter
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> buttonNormalFillStyleFor: aButton [
	"Return the normal button fillStyle for the given button."
	self flag: 'not returning an object color'.
	(aButton valueOfProperty: #noFill ifAbsent: [false]) 
		ifTrue: [ ^ SolidFillStyle color: Color transparent ].
	^ SolidFillStyle color: self buttonColor
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> buttonSelectedFillStyleFor: aButton [

	"Return the normal button fillStyle for the given button."

	self flag: 'not returning an object color'.
	^ SolidFillStyle color: self selectionColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> caretColor [
	^ Color lightBlue
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> classExtensionColor [
	^ Color gray lighter lighter
]

{ #category : #initialization }
PharoDarkTheme2 >> colorPaletteForTheme [

	^ DarkThemeColorConfigurator new
		themeSettings: settings;
		yourself
]

{ #category : #configure }
PharoDarkTheme2 >> configureMorphTreeMorph: aMorph [
	self flag: 'not returning an object color'.
	aMorph preferedPaneColor: self backgroundColor.
	aMorph 
		rowColorForEven: self backgroundColor
		odd: self backgroundColor.
]

{ #category : #configure }
PharoDarkTheme2 >> configurePluggableTextMorph: textMorph [

	self flag: 'not returning an object color'.
	textMorph
		color: self backgroundColor;
		textColor: self textColor;
		borderWidth: 1
]

{ #category : #configure }
PharoDarkTheme2 >> configureScrollPane: aMorph [

	self flag: 'not returning an object color'
]

{ #category : #configure }
PharoDarkTheme2 >> configureSystemWindow: aWindow [

	self flag: 'not returning an object color'
]

{ #category : #configure }
PharoDarkTheme2 >> configureTextMorph: textMorph [

	self flag: 'not returning an object color'.
	textMorph color: self textColor
]

{ #category : #'border-styles' }
PharoDarkTheme2 >> configureWindowBorderFor: aWindow [

	| aStyle |
	self flag: 'not returning an object color'.
	aStyle := SimpleBorderStyle new 
					color: self borderColor;
					width: 1.
	aWindow borderStyle: aStyle
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> controlButtonNormalFillStyleFor: aButton [
	"Return the normal control button fillStyle for the given button.
	Control buttons are generally used for drop-lists and expanders."
	
	self flag: 'not returning an object color'.
	^ self buttonNormalFillStyleFor: aButton
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> dangerTextColor [
	^ Color 
		r: 239	
		g: 83	
		b: 80	
		range: 255
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> desktopColor [

	^ Color darkGray darker
]

{ #category : #'basic-colors - diffs' }
PharoDarkTheme2 >> diffAdditionalLineBackgroundColor [
	"Answer the color used to highlight additional text lines in a diff view."
	
	^ Color r: 0.0 g: 0.76 b: 0.0 alpha: 0.2
]

{ #category : #'basic-colors - diffs' }
PharoDarkTheme2 >> diffEdgeColor [
	"Answer the color used to show the border of the changes."
	
	^ Color white alpha: 0.5
]

{ #category : #'basic-colors - diffs' }
PharoDarkTheme2 >> diffModificatedLineBackgroundColor [
	"Answer the color used to highlight changed text lines in a diff view."
	
	^ Color gray alpha: 0.2
]

{ #category : #'basic-colors - diffs' }
PharoDarkTheme2 >> diffRemovedLinesBackgroundColor [
	"Answer the color used to highlight removed text lines in a diff view."
	
	^ Color r: 0.84 g: 0.0 b: 0.0 alpha: 0.2
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> disabledColor [ 
	^ Color gray lighter
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> dropListNormalFillStyleFor: aDropList [
	"Return the normal fillStyle for the given drop list."
	
	^ self backgroundColor
]

{ #category : #'border-styles' }
PharoDarkTheme2 >> dropListNormalListBorderStyleFor: aDropList [

	"Return the normal borderStyle for the list of the given given drop list"

	self flag: 'not returning an object color'.
	^ BorderStyle inset
		  width: 1;
		  baseColor: self buttonColor lighter
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> dropListNormalListFillStyleFor: aDropList [
	"Return the normal fillStyle for the list of the given drop list."
	
	^ self backgroundColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> enabledColor [ 
	^ self textColor
]

{ #category : #'basic-colors' }
PharoDarkTheme2 >> errorPopperBackgroundColor [
	^ Color red muchDarker
]

{ #category : #initialization }
PharoDarkTheme2 >> initialize [

	super initialize.
	self windowActiveDropShadowStyle: #diffuse.
	self settings preferGradientFill: false.
]

{ #category : #'label-styles' }
PharoDarkTheme2 >> labelDisabledColorFor: aLabel [
	"Answer the color to use for a label when disabled."
	self flag: 'not returning an object color'.
	^aLabel owner
		ifNil: [aLabel paneColor muchDarker]
		ifNotNil: [aLabel owner color isTransparent
			ifTrue: [ aLabel owner paneColor muchLighter ]
			ifFalse: [ aLabel owner color muchLighter ] ]
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> lessConspicuousColorFrom: aColor [

	^	aColor slightlyLighter
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> lightBackgroundColor [

	^ Color r: 0.218 g: 0.217 b: 0.217
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> lineNumberColor [ 
	^ Color gray lighter lighter
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> listNormalFillStyleFor: aList [
	"Return the normal fillStyle for the given list."
	
	^ self backgroundColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> listTextColor [
	"Answer the list text color to use."

	^ self textColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> menuBorderColor [
	^ self borderColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> menuBorderWidth [
	self flag: 'not returning an object color'.
	^ self borderWidth * self displayScaleFactor
]

{ #category : #defaults }
PharoDarkTheme2 >> menuItemDisabledTextColorFor: aMenuItem [

	^ Color lightGray
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> mouseOverColor [ 
	^ self lightBackgroundColor
]

{ #category : #initialization }
PharoDarkTheme2 >> newRadioMarkerForm [
	"Answer a new checkbox marker form."
	self flag: 'not returning an object color'.
	^ Form extent: 12@12 depth: 32
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> scrollbarColor [ 
	^ self buttonColor
]

{ #category : #'border-styles - scrollbars' }
PharoDarkTheme2 >> scrollbarNormalFillStyleFor: aScrollbar [
	"Return the normal scrollbar fillStyle for the given scrollbar."
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: self backgroundColor lighter.
]

{ #category : #'border-styles - scrollbars' }
PharoDarkTheme2 >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the normal scrollbar button fillStyle for the given scrollbar."
	self flag: 'not returning an object color'.
	^ self buttonSelectedFillStyleFor: aScrollbar
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> secondarySelectionColor [
	^ Color r: 0.31 g: 0.31 b: 0.36 alpha: 1.0
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> selectionColor [
	^ Color r: 16r07 g: 16r63 b: 16rAD range: 255
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> selectionTextColor [
	^ Color r: 16rE0 g: 16rE2 b: 16rE4 range: 255
]

{ #category : #defaults }
PharoDarkTheme2 >> shStyleTableName [
	self flag: 'not returning an object color'.
	^ #darkStyleTable
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> sliderNormalFillStyleFor: aSlider [

	^ self backgroundColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> spotlightWindowColor [ 
	^ self windowColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> successTextColor [
	^ Color green darker darker darker
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarFillStyleFor: aTaskbar [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: (Color black lighter alpha: 0.8)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemDisabledBorderStyleFor: aButton [
	self flag: 'not returning an object color'.	
	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemDisabledFillStyleFor: aButton [
	"Return the disabled taskbar item fillStyle for the given color."
	self flag: 'not returning an object color'.
	^ self taskbarItemNormalFillStyleFor: aButton
]

{ #category : #'basic-colors' }
PharoDarkTheme2 >> taskbarItemLabelColorForCollapsed: aButton [
	"Answer the colour for the label of the given taskbar button, given that the corresponding window is collapsed."

	^ Color lightGray
]

{ #category : #'basic-colors' }
PharoDarkTheme2 >> taskbarItemLabelColorForExpanded: aButton [
	"Answer the colour for the label of the given taskbar button, given that the corresponding window is expanded."

	^ Color white
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemMouseOverBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ BottomBorderStyle new
		color: Color white;
		width: 2;
		yourself
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemMouseOverFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: (Color white alpha: 0.15)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemNormalBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ BottomBorderStyle new
		color: Color white;
		width: 1;
		trimSize: 2;
		yourself
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemNormalFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemPressedBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemPressedFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: (Color white alpha: 0.4)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedDisabledBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedDisaledFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ self taskbarItemSelectedFillStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: (Color white alpha: 0.15)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedMouseOverBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedMouseOverFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: (Color white alpha: 0.25)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedPressedBorderStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedPressedFillStyleFor: aButton [
	self flag: 'not returning an object color'.
	^ SolidFillStyle color: (Color white alpha: 0.35)
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> textColor [
	^ Color white
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> textColorForNonStandardBackground [
	^ Color black
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> textEditorNormalFillStyleFor: aTextEditor [
	^ self backgroundColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> unfocusedSelectionColor [
	^ self secondarySelectionColor
]

{ #category : #'accessing - colors' }
PharoDarkTheme2 >> warningTextColor [
	^ Color yellow darker darker
]

{ #category : #'fill-styles' }
PharoDarkTheme2 >> windowActiveLabelFillStyleFor: aWindow [
	^ self textColor
]

{ #category : #'label-styles - windows' }
PharoDarkTheme2 >> windowLabelForText: aTextOrString [
	self flag: 'not returning an object color'.
	^ (super windowLabelForText: aTextOrString)
		color: self textColor;
		yourself
]
