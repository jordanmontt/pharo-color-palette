Class {
	#name : #PharoDarkTheme2,
	#superclass : #UITheme2,
	#category : #'UITheme-Color-Palette'
}

{ #category : #configuration }
PharoDarkTheme2 class >> colorConfiguratorClass [

	^ DarkThemeColorConfigurator
]

{ #category : #accessing }
PharoDarkTheme2 class >> isAbstract [

	"Answer whether the receiver is considered to be abstract."

	^ false
]

{ #category : #accessing }
PharoDarkTheme2 class >> themeName [

	^ 'Pharo Dark'
]

{ #category : #'border-styles - buttons' }
PharoDarkTheme2 >> buttonDisabledBorderStyleFor: aButton [

	"Return the disabled button fillStyle for the given color."

	^ BorderStyle width: 0 color: Color transparent
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> buttonDisabledFillStyleFor: aButton [

	"Return the disabled button fillStyle for the given color."

	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles - buttons' }
PharoDarkTheme2 >> buttonNormalBorderStyleFor: aButton [

	"Return the normal button borderStyle for the given button."

	(aButton valueOfProperty: #noBorder ifAbsent: [ false ]) ifTrue: [ 
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

	(aButton valueOfProperty: #noFill ifAbsent: [ false ]) ifTrue: [ 
		^ SolidFillStyle color: Color transparent ].
	^ SolidFillStyle color: self buttonColor
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> buttonSelectedFillStyleFor: aButton [

	"Return the normal button fillStyle for the given button."

	^ SolidFillStyle color: self selectionColor
]

{ #category : #configure }
PharoDarkTheme2 >> configureMorphTreeMorph: aMorph [

	aMorph preferedPaneColor: self backgroundColor.
	aMorph rowColorForEven: self backgroundColor odd: self backgroundColor
]

{ #category : #configure }
PharoDarkTheme2 >> configurePluggableTextMorph: textMorph [

	textMorph
		color: self backgroundColor;
		textColor: self textColor;
		borderWidth: 1
]

{ #category : #configure }
PharoDarkTheme2 >> configureScrollPane: aMorph [

	
]

{ #category : #configure }
PharoDarkTheme2 >> configureSystemWindow: aWindow [

	
]

{ #category : #configure }
PharoDarkTheme2 >> configureTextMorph: textMorph [

	textMorph color: self textColor
]

{ #category : #'border-styles' }
PharoDarkTheme2 >> configureWindowBorderFor: aWindow [

	| aStyle |
	aStyle := SimpleBorderStyle new 
		color: self borderColor;
		width: 1.
	aWindow borderStyle: aStyle
]

{ #category : #'fill-styles - buttons' }
PharoDarkTheme2 >> controlButtonNormalFillStyleFor: aButton [

	"Return the normal control button fillStyle for the given button.
	Control buttons are generally used for drop-lists and expanders."

	^ self buttonNormalFillStyleFor: aButton
]

{ #category : #'border-styles' }
PharoDarkTheme2 >> dropListNormalListBorderStyleFor: aDropList [

	"Return the normal borderStyle for the list of the given given drop list"

	^ BorderStyle inset
		  width: 1;
		  baseColor: self buttonColor lighter
]

{ #category : #initialization }
PharoDarkTheme2 >> initialize [

	super initialize.
	self settings preferGradientFill: false.
]

{ #category : #'label-styles' }
PharoDarkTheme2 >> labelDisabledColorFor: aLabel [

	"Answer the color to use for a label when disabled."

	^ aLabel owner ifNil: [ aLabel paneColor muchDarker ] ifNotNil: [ 
		  aLabel owner color isTransparent ifTrue: [ aLabel owner paneColor muchLighter ]
			  ifFalse: [ aLabel owner color muchLighter ] ]
]

{ #category : #accessing }
PharoDarkTheme2 >> menuBorderWidth [

	^ self borderWidth * self displayScaleFactor
]

{ #category : #initialization }
PharoDarkTheme2 >> newRadioMarkerForm [

	"Answer a new checkbox marker form."

	^ Form extent: 12 @ 12 depth: 32
]

{ #category : #'fill-styles - scrollbars' }
PharoDarkTheme2 >> scrollbarPressedThumbFillStyleFor: aScrollbar [

	"Return the normal scrollbar button fillStyle for the given scrollbar."

	^ self buttonSelectedFillStyleFor: aScrollbar
]

{ #category : #accessing }
PharoDarkTheme2 >> shStyleTableName [

	^ #darkStyleTable
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarFillStyleFor: aTaskbar [

	^ SolidFillStyle color: (Color black lighter alpha: 0.8)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemDisabledBorderStyleFor: aButton [

	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemDisabledFillStyleFor: aButton [

	"Return the disabled taskbar item fillStyle for the given color."

	^ self taskbarItemNormalFillStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemMouseOverBorderStyleFor: aButton [

	^ BottomBorderStyle new
		  color: Color white;
		  width: 2;
		  yourself
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemMouseOverFillStyleFor: aButton [

	^ SolidFillStyle color: (Color white alpha: 0.15)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemNormalBorderStyleFor: aButton [

	^ BottomBorderStyle new
		  color: Color white;
		  width: 1;
		  trimSize: 2;
		  yourself
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemNormalFillStyleFor: aButton [

	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemPressedBorderStyleFor: aButton [

	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemPressedFillStyleFor: aButton [

	^ SolidFillStyle color: (Color white alpha: 0.4)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedBorderStyleFor: aButton [

	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedDisabledBorderStyleFor: aButton [

	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedDisaledFillStyleFor: aButton [

	^ self taskbarItemSelectedFillStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedFillStyleFor: aButton [

	^ SolidFillStyle color: (Color white alpha: 0.15)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedMouseOverBorderStyleFor: aButton [

	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedMouseOverFillStyleFor: aButton [

	^ SolidFillStyle color: (Color white alpha: 0.25)
]

{ #category : #'border-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedPressedBorderStyleFor: aButton [

	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoDarkTheme2 >> taskbarItemSelectedPressedFillStyleFor: aButton [

	^ SolidFillStyle color: (Color white alpha: 0.35)
]

{ #category : #'label-styles - windows' }
PharoDarkTheme2 >> windowLabelForText: aTextOrString [

	^ (super windowLabelForText: aTextOrString)
		  color: self textColor;
		  yourself
]
