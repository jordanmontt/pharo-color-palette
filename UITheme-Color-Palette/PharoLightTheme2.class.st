Class {
	#name : #PharoLightTheme2,
	#superclass : #UITheme2,
	#category : #'UITheme-Color-Palette'
}

{ #category : #accessing }
PharoLightTheme2 class >> baseColor [
	^ Color r: 210 g: 210 b: 210 range: 255
]

{ #category : #accessing }
PharoLightTheme2 class >> basePassiveBackgroundColor [
	^ Color r: 245 g: 245 b: 245 range: 255
]

{ #category : #accessing }
PharoLightTheme2 class >> baseSelectionColor [
	^ Color r: 97 g: 163 b: 225 range: 255
]

{ #category : #accessing }
PharoLightTheme2 class >> darkBaseColor [
	^ Color r: 200 g: 200 b: 200 range: 255
]

{ #category : #accessing }
PharoLightTheme2 class >> isAbstract [
	"Answer whether the receiver is considered to be abstract."

	^false
]

{ #category : #accessing }
PharoLightTheme2 class >> lightBaseColor [
	^ Color r: 230 g: 230 b: 230 range: 255
]

{ #category : #accessing }
PharoLightTheme2 class >> lightSelectionColor [
	^ Color r: 175 g: 213 b: 250 range: 255
]

{ #category : #settings }
PharoLightTheme2 class >> setPreferredPreferences [
	"NECPreferences 
		expandPrefixes: true;
		popupShowWithShortcut: Character tab asShortcut."
]

{ #category : #settings }
PharoLightTheme2 class >> setPreferredShoutColors [
	"self setPreferredShoutColors"

	SHRBTextStyler styleTable: 
		#(
			"(symbol color [emphasisSymbolOrArray [textStyleName [pixelHeight]]])" 
			(default 								black)
			(invalid 									red)
			(excessCode 							red)
			(comment 								(gray darker))
			(unfinishedComment 					(red muchDarker))
			(#'$' 									(red muchDarker))
			(character 								(red muchDarker))
			(integer 								(red muchDarker))
			(number 								(red muchDarker)) 
			(#- 										(red muchDarker))
			(symbol 								(magenta muchDarker)) 
			(stringSymbol 							(magenta muchDarker)) 
			(literalArray 							(magenta muchDarker))
			(string 									(magenta muchDarker) normal)
			(unfinishedString 						red normal)
			(assignment 							nil)
			(ansiAssignment 						nil)
			(literal 									nil italic)
			(keyword 								(black))
			(binary 									(black)) 
			(unary 									(black))
			(incompleteKeyword 					red)
			(incompleteBinary 						red) 
			(incompleteUnary 						red )
			(undefinedKeyword 					red)
			(undefinedBinary 						red) 
			(undefinedUnary 						red) 
			(patternKeyword 						nil bold)
			(patternBinary 							nil bold)
			(patternUnary 							nil bold) 
			(#self 									(cyan muchDarker ))
			(#super 								(cyan muchDarker ))
			(#true 									(red muchDarker))
			(#false 									(red muchDarker))
			(#nil 									(red muchDarker))
			(#thisContext 							(cyan muchDarker ))
			(#return 								(cyan muchDarker ) bold)
			(patternArg 							(blue muchDarker)) 
			(methodArg 							(blue muchDarker))
			(blockPatternArg 						(blue muchDarker))
			(blockArg 								(blue muchDarker))
			(argument 								(blue muchDarker))
			(blockArgColon 						black)
			(leftParenthesis 						black)
			(rightParenthesis 						black)
			(leftParenthesis1 						(green muchDarker))
			(rightParenthesis1 						(green muchDarker))
			(leftParenthesis2 						(magenta muchDarker))
			(rightParenthesis2 						(magenta muchDarker))
			(leftParenthesis3 						(red muchDarker))
			(rightParenthesis3 						(red muchDarker))
			(leftParenthesis4 						(green darker))
			(rightParenthesis4 						(green darker))
			(leftParenthesis5 						(orange darker))
			(rightParenthesis5 						(orange darker))
			(leftParenthesis6 						(magenta darker))
			(rightParenthesis6 						(magenta darker))
			(leftParenthesis7 						blue)
			(rightParenthesis7 						blue)
			(blockStart 								black)
			(blockEnd 								black)
			(blockStart1 							(green muchDarker))
			(blockEnd1 								(green muchDarker))
			(blockStart2 							(magenta muchDarker))
			(blockEnd2 								(magenta muchDarker))
			(blockStart3 							(red muchDarker))
			(blockEnd3 								(red muchDarker))
			(blockStart4 							(green darker))
			(blockEnd4 								(green darker))
			(blockStart5 							(orange darker))
			(blockEnd5 								(orange darker))
			(blockStart6 							(magenta darker))
			(blockEnd6 								(magenta darker))
			(blockStart7 							blue)
			(blockEnd7 								blue) 
			(arrayStart 								black)
			(arrayEnd 								black)
			(arrayStart1 							black)
			(arrayEnd1 								black)
			(leftBrace 								black)
			(rightBrace 								black)
			(cascadeSeparator 					black)
			(statementSeparator 					black)
			(externalCallType 						black)
			(externalCallTypePointerIndicator 		black)
			(primitiveOrExternalCallStart 			black bold)
			(primitiveOrExternalCallEnd 			black bold)
			(methodTempBar 						(black))
			(blockTempBar 						(black))
			(blockArgsBar 							(black))
			(primitive 								(green muchDarker))
			(pragmaKeyword 						(green muchDarker))
			(pragmaUnary 							(green muchDarker))
			(pragmaBinary 							(green muchDarker)) 
			(externalFunctionCallingConvention 	(green muchDarker) bold)
			(module 								(green muchDarker) bold)
			(blockTempVar 						(blue muchDarker))
			(blockPatternTempVar 					(blue muchDarker))
			(instVar 								(blue muchDarker))
			(workspaceVar 							(blue muchDarker))
			(undefinedIdentifier 					red)
			(incompleteIdentifier 					red)
			(tempVar 								(blue muchDarker))
			(patternTempVar 						(blue muchDarker))
			(poolConstant 							(blue muchDarker))
			(classVar 								(blue muchDarker))
			(globalVar 								(blue muchDarker)))
]

{ #category : #accessing }
PharoLightTheme2 class >> themeName [
	^ 'Pharo Light'
]

{ #category : #accessing }
PharoLightTheme2 class >> veryLightSelectionColor [
	^ self lightSelectionColor muchLighter
]

{ #category : #'accessing - colors' }
PharoLightTheme2 >> balloonBackgroundColor [

	^ (Color r: 1.0 g: 1.0 b: 0.71 alpha: 1.0)
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

{ #category : #'accessing - colors' }
PharoLightTheme2 >> ghostTextColor [

	^ Color darkGray
]

{ #category : #initialization }
PharoLightTheme2 >> initialize [
	"self beCurrent"

	super initialize.
	self windowActiveDropShadowStyle: #diffuse.
	self settings preferGradientFill: false.
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