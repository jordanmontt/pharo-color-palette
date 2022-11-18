Class {
	#name : #PharoLightTheme2,
	#superclass : #UITheme2,
	#category : #'UITheme-Color-Palette'
}

{ #category : #configuration }
PharoLightTheme2 class >> colorConfiguratorClass [

	^ LightThemeColorConfigurator
]

{ #category : #testing }
PharoLightTheme2 class >> isAbstract [

	"Answer whether the receiver is considered to be abstract."

	^ false
]

{ #category : #settings }
PharoLightTheme2 class >> setPreferredPreferences [
	"NECPreferences 
		expandPrefixes: true;
		popupShowWithShortcut: Character tab asShortcut."
]

{ #category : #accessing }
PharoLightTheme2 class >> themeName [

	^ 'Pharo Light'
]

{ #category : #'fill-styles - buttons' }
PharoLightTheme2 >> buttonDisabledBorderStyleFor: aButton [
	"Return the disabled button fillStyle for the given color."

	^ BorderStyle
		width: 0
		color: Color transparent
]

{ #category : #'fill-styles - buttons' }
PharoLightTheme2 >> buttonDisabledFillStyleFor: aButton [
	"Return the disabled button fillStyle for the given color."

	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles - buttons' }
PharoLightTheme2 >> buttonNormalBorderStyleFor: aButton [
	"Return the normal button borderStyle for the given button."

	| outerColor |
	(aButton valueOfProperty: #noBorder ifAbsent: [false]) 
		ifTrue: [ ^ SimpleBorderStyle new 
							width: 0; 
							baseColor: Color transparent ].
	outerColor := self darkBaseColorFor: aButton.
	^ SimpleBorderStyle new
			width: 1;
			baseColor: outerColor
]

{ #category : #'border-styles' }
PharoLightTheme2 >> configureWindowBorderFor: aWindow [

	| aStyle |
	aStyle := SimpleBorderStyle new 
					color: (Color lightGray);
					width: 1.
	aWindow borderStyle: aStyle
]

{ #category : #initialization }
PharoLightTheme2 >> initialize [

	"self beCurrent"

	super initialize.
	self windowActiveDropShadowStyle: #diffuse.
	self settings preferGradientFill: false
]

{ #category : #forms }
PharoLightTheme2 >> newRadioMarkerForm [
	"Answer a new checkbox marker form."

	^Form extent: 12@12 depth: 32
]

{ #category : #forms }
PharoLightTheme2 >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the pressed scrollbar thumb fillStyle for the given scrollbar."
		"Return the normal scrollbar fillStyle for the given scrollbar."
	
	"^ (self glamorousNormalFillStyleWithBaseColor: aScrollbar paneColor for:  aScrollbar height: aScrollbar height)
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0])"
"	^ SolidFillStyle color: Color lightGray lighter."
	^ self selectedFillStyleFor: aScrollbar height: aScrollbar height
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarFillStyleFor: aTaskbar [
	^ SolidFillStyle color: (Color gray muchLighter alpha: 0.8)
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemDisabledBorderStyleFor: aButton [
	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemDisabledFillStyleFor: aButton [
	"Return the disabled taskbar item fillStyle for the given color."

	^ self taskbarItemNormalFillStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemMouseOverBorderStyleFor: aButton [
	^ BottomBorderStyle new
		color: (Color fromHexString: '616161');
		width: 2;
		yourself
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarItemMouseOverFillStyleFor: aButton [
	^ SolidFillStyle color: (Color black alpha: 0.07)
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemNormalBorderStyleFor: aButton [
	^ BottomBorderStyle new
		color: (Color fromHexString: '757575');
		width: 2;
		trimSize: 2;
		yourself
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarItemNormalFillStyleFor: aButton [
	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemPressedBorderStyleFor: aButton [
	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarItemPressedFillStyleFor: aButton [
	^ SolidFillStyle color: (Color black alpha: 0.15)
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedDisabledBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedFillStyleFor: aButton [
	^ SolidFillStyle color: (Color black alpha: 0.1)
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedMouseOverBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedMouseOverFillStyleFor: aButton [
	^ SolidFillStyle color: (Color black alpha: 0.15)
]

{ #category : #'border-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedPressedBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles - taskbar' }
PharoLightTheme2 >> taskbarItemSelectedPressedFillStyleFor: aButton [
	^ SolidFillStyle color: (Color black alpha: 0.2)
]
