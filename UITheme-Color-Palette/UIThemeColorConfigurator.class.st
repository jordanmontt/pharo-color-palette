Class {
	#name : #UIThemeColorConfigurator,
	#superclass : #Object,
	#category : #'UITheme-Color-Palette'
}

{ #category : #colors }
UIThemeColorConfigurator >> backgroundColor [

	^ Color white
]

{ #category : #colors }
UIThemeColorConfigurator >> badgeColor [

	^ Color red
]

{ #category : #colors }
UIThemeColorConfigurator >> badgeTextColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> balloonBackgroundColor [

	^ self lightBaseColor
]

{ #category : #colors }
UIThemeColorConfigurator >> balloonTextColor [

	^ self textColor
]

{ #category : #colors }
UIThemeColorConfigurator >> baseColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> baseColorFor: anObject [

	^ self baseColor
]

{ #category : #colors }
UIThemeColorConfigurator >> basePassiveBackgroundColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> baseSelectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> borderColor [

	^ Color gray
]

{ #category : #colors }
UIThemeColorConfigurator >> buttonColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> buttonColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> caretColor [

	^ Color blue
]

{ #category : #colors }
UIThemeColorConfigurator >> classExtensionColor [

	^ Color gray darker
]

{ #category : #colors }
UIThemeColorConfigurator >> dangerBackgroundColor [

	^ self dangerTextColor darker darker
]

{ #category : #colors }
UIThemeColorConfigurator >> dangerTextColor [

	^ Color red darker darker
]

{ #category : #colors }
UIThemeColorConfigurator >> darkBaseColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> desktopColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> diffAdditionalLineBackgroundColor [

	^ Color green alpha: 0.2
]

{ #category : #colors }
UIThemeColorConfigurator >> diffAdditionalTextInLineBackgroundColor [

	^ self diffAdditionalLineBackgroundColor alpha: 0.4
]

{ #category : #colors }
UIThemeColorConfigurator >> diffEdgeColor [

	^ Color gray alpha: 0.3
]

{ #category : #colors }
UIThemeColorConfigurator >> diffJoinColor [

	^ Color paleBlue duller
]

{ #category : #colors }
UIThemeColorConfigurator >> diffMapColor [

	^ self backgroundColor
]

{ #category : #colors }
UIThemeColorConfigurator >> diffModificatedLineBackgroundColor [

	^ Color yellow alpha: 0.2
]

{ #category : #colors }
UIThemeColorConfigurator >> diffRemovalHighlightColor [

	^ self diffRemovedLinesBackgroundColor alpha: 0.4
]

{ #category : #colors }
UIThemeColorConfigurator >> diffRemovedLinesBackgroundColor [

	^ Color red alpha: 0.2
]

{ #category : #colors }
UIThemeColorConfigurator >> disabledColor [

	^ Color gray
]

{ #category : #colors }
UIThemeColorConfigurator >> disabledTextColor [

	^ self disabledColor
]

{ #category : #colors }
UIThemeColorConfigurator >> dropListNormalFillStyleFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> dropListNormalListFillStyleFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> enabledColor [

	^ Color black
]

{ #category : #colors }
UIThemeColorConfigurator >> errorPopperBackgroundColor [

	^ Color paleRed
]

{ #category : #colors }
UIThemeColorConfigurator >> ghostTextColor [

	^ Color lightGray
]

{ #category : #colors }
UIThemeColorConfigurator >> lessConspicuousColorFrom: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> lightBackgroundColor [

	^ Color veryLightGray muchLighter
]

{ #category : #colors }
UIThemeColorConfigurator >> lightBaseColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> lightColorFor: aButton [

	^ self lightBaseColor
]

{ #category : #colors }
UIThemeColorConfigurator >> lightSelectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> lineNumberColor [

	^ Color gray muchDarker
]

{ #category : #colors }
UIThemeColorConfigurator >> listBackgroundColor [

	^ self backgroundColor
]

{ #category : #colors }
UIThemeColorConfigurator >> listNormalFillStyleFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> listTextColor [

	^ Color black
]

{ #category : #colors }
UIThemeColorConfigurator >> menuBorderColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> menuColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> menuItemDisabledTextColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> menuKeyboardFocusColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> menuSelectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> menuShadowColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> menuTitleColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> mouseOverColor [

	^ self backgroundColor darker darker
]

{ #category : #colors }
UIThemeColorConfigurator >> paginatorSelectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> patchworkUIThemeColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> popoverButtonColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> progressBarColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> progressBarProgressColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> scrollbarColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> scrollbarColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> secondarySelectionColor [

	^ Color r: 0.927 g: 0.962 b: 0.995 alpha: 1.0
]

{ #category : #colors }
UIThemeColorConfigurator >> selectedItemListTextColor [

	^ self textColor
]

{ #category : #colors }
UIThemeColorConfigurator >> selectionBarColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> selectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> selectionTextColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> sliderNormalFillStyleFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> spotlightWindowColor [

	^ self selectionColor muchDarker
]

{ #category : #colors }
UIThemeColorConfigurator >> subgroupColorFrom: paneColor [

	^ self lightColorFor: paneColor "self class baseColor"
]

{ #category : #colors }
UIThemeColorConfigurator >> successBackgroundColor [

	^ self successTextColor lighter lighter
]

{ #category : #colors }
UIThemeColorConfigurator >> successTextColor [

	^ Color r: 0 g: 0.5 b: 0
]

{ #category : #colors }
UIThemeColorConfigurator >> taskbarActiveButtonColorFor: anObject [

	^ self scrollbarColor alphaMixed: 0.7 with: Color white
]

{ #category : #colors }
UIThemeColorConfigurator >> taskbarButtonColorFor: aButton [

	^ self windowColorFor: aButton model
]

{ #category : #colors }
UIThemeColorConfigurator >> taskbarButtonLabelColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> taskbarItemLabelColorForCollapsed: anObject [

	^ Color darkGray
]

{ #category : #colors }
UIThemeColorConfigurator >> taskbarItemLabelColorForExpanded: anObject [

	^ Color black
]

{ #category : #colors }
UIThemeColorConfigurator >> taskbarMinimizedButtonColorFor: anObject [

	^ Color transparent
]

{ #category : #colors }
UIThemeColorConfigurator >> testColorError [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> testColorFailure [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> testColorPassing [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> textColor [

	^ Color black
]

{ #category : #colors }
UIThemeColorConfigurator >> textColorForNonStandardBackground [

	^ self textColor
]

{ #category : #colors }
UIThemeColorConfigurator >> textEditorNormalFillStyleFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> treeLineDashes [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> unfocusedSelectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> urlColor [

	^ Color fromHexString: '03A9F4'
]

{ #category : #colors }
UIThemeColorConfigurator >> veryLightSelectionColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> warningBackgroundColor [

	^ Color yellow
]

{ #category : #colors }
UIThemeColorConfigurator >> warningTextColor [

	^ Color yellow muchDarker
]

{ #category : #colors }
UIThemeColorConfigurator >> windowActiveLabelFillStyleFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> windowColor [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> windowColorFor: anObject [

	^ self subclassResponsibility
]

{ #category : #colors }
UIThemeColorConfigurator >> windowShadowColor [

	^ Color gray
]

{ #category : #colors }
UIThemeColorConfigurator >> worldMainDockingBarColorFor: anObject [

	^ self subclassResponsibility
]
