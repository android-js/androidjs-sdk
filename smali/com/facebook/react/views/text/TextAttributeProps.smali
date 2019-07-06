.class public Lcom/facebook/react/views/text/TextAttributeProps;
.super Ljava/lang/Object;
.source "TextAttributeProps.java"


# static fields
.field private static final DEFAULT_TEXT_SHADOW_COLOR:I = 0x55000000

.field private static final INLINE_IMAGE_PLACEHOLDER:Ljava/lang/String; = "I"

.field private static final PROP_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROP_SHADOW_OFFSET:Ljava/lang/String; = "textShadowOffset"

.field private static final PROP_SHADOW_OFFSET_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROP_SHADOW_OFFSET_WIDTH:Ljava/lang/String; = "width"

.field private static final PROP_SHADOW_RADIUS:Ljava/lang/String; = "textShadowRadius"

.field private static final PROP_TEXT_TRANSFORM:Ljava/lang/String; = "textTransform"

.field public static final UNSET:I = -0x1


# instance fields
.field protected mAllowFontScaling:Z

.field protected mBackgroundColor:I

.field protected mColor:I

.field protected mContainsImages:Z

.field protected mFontFamily:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mFontSize:I

.field protected mFontSizeInput:F

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mHeightOfTallestInlineImage:F

.field protected mIncludeFontPadding:Z

.field protected mIsBackgroundColorSet:Z

.field protected mIsColorSet:Z

.field protected mIsLineThroughTextDecorationSet:Z

.field protected mIsUnderlineTextDecorationSet:Z

.field protected mJustificationMode:I

.field protected mLetterSpacing:F

.field protected mLetterSpacingInput:F

.field protected mLineHeight:F

.field protected mLineHeightInput:F

.field protected mNumberOfLines:I

.field private final mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

.field protected mTextAlign:I

.field protected mTextBreakStrategy:I

.field protected mTextShadowColor:I

.field protected mTextShadowOffsetDx:F

.field protected mTextShadowOffsetDy:F

.field protected mTextShadowRadius:F

.field protected mTextTransform:Lcom/facebook/react/views/text/TextTransform;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 8
    .param p1, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 38
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    .line 40
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 42
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    .line 45
    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    .line 46
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    .line 47
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    .line 48
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    .line 49
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 50
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 51
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    .line 53
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mJustificationMode:I

    .line 55
    sget-object v5, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    iput-object v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    .line 57
    const/4 v5, 0x0

    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 58
    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 59
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    .line 60
    const/high16 v5, 0x55000000

    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 62
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 63
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 64
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    .line 70
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    .line 72
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    .line 90
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mContainsImages:Z

    .line 93
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    .line 99
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 100
    const-string v7, "numberOfLines"

    invoke-direct {p0, v7, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->setNumberOfLines(I)V

    .line 101
    const-string v3, "lineHeight"

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    .line 102
    const-string v3, "letterSpacing"

    invoke-direct {p0, v3, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    .line 103
    const-string v0, "allowFontScaling"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setAllowFontScaling(Z)V

    .line 104
    const-string v0, "textAlign"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextAlign(Ljava/lang/String;)V

    .line 105
    const-string v0, "fontSize"

    invoke-direct {p0, v0, v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 106
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    .line 107
    const-string v0, "foregroundColor"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    .line 108
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v6

    :goto_3
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 109
    const-string v0, "fontFamily"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontFamily(Ljava/lang/String;)V

    .line 110
    const-string v0, "fontWeight"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontWeight(Ljava/lang/String;)V

    .line 111
    const-string v0, "fontStyle"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontStyle(Ljava/lang/String;)V

    .line 112
    const-string v0, "includeFontPadding"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setIncludeFontPadding(Z)V

    .line 113
    const-string v0, "textDecorationLine"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextDecorationLine(Ljava/lang/String;)V

    .line 114
    const-string v0, "textBreakStrategy"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextBreakStrategy(Ljava/lang/String;)V

    .line 115
    const-string v0, "textShadowOffset"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    :cond_4
    invoke-virtual {p0, v6}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 116
    const-string v0, "textShadowRadius"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowRadius(F)V

    .line 117
    const-string v0, "textShadowColor"

    invoke-direct {p0, v0, v5}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowColor(I)V

    .line 118
    const-string v0, "textTransform"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextTransform(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private getBooleanProp(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 122
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 125
    :cond_0
    return p2
.end method

.method private getFloatProp(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultvalue"    # F

    .line 146
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 149
    :cond_0
    return p2
.end method

.method private getIntProp(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultvalue"    # I

    .line 138
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 141
    :cond_0
    return p2
.end method

.method private getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 1

    .line 400
    sget-object v0, Lcom/facebook/yoga/YogaDirection;->LTR:Lcom/facebook/yoga/YogaDirection;

    return-object v0
.end method

.method private getPaddingProp(Ljava/lang/String;)F
    .locals 3
    .param p1, "paddingType"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    const-string v1, "padding"

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 429
    invoke-direct {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    return v0

    .line 432
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    return v0
.end method

.method private getStringProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseNumericFontWeight(Ljava/lang/String;)I
    .locals 3
    .param p0, "fontWeightString"    # Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 391
    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-lt v1, v2, :cond_0

    .line 394
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 390
    :goto_0
    return v0
.end method


# virtual methods
.method public getBottomPadding()F
    .locals 1

    .line 404
    const-string v0, "paddingBottom"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getEffectiveLineHeight()F
    .locals 2

    .line 156
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 157
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    .line 158
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "useInlineViewHeight":Z
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    :goto_1
    return v1
.end method

.method public getEndPadding()F
    .locals 1

    .line 416
    const-string v0, "paddingEnd"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getLeftPadding()F
    .locals 1

    .line 408
    const-string v0, "paddingLeft"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getRightPadding()F
    .locals 1

    .line 424
    const-string v0, "paddingRight"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getStartPadding()F
    .locals 1

    .line 412
    const-string v0, "paddingStart"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTextAlign()I
    .locals 3

    .line 165
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 166
    .local v0, "textAlign":I
    invoke-direct {p0}, Lcom/facebook/react/views/text/TextAttributeProps;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object v1

    sget-object v2, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne v1, v2, :cond_1

    .line 167
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v0, 0x3

    goto :goto_0

    .line 169
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 170
    const/4 v0, 0x5

    .line 173
    :cond_1
    :goto_0
    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .line 420
    const-string v0, "paddingTop"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setAllowFontScaling(Z)V
    .locals 1
    .param p1, "allowFontScaling"    # Z

    .line 200
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eq p1, v0, :cond_0

    .line 201
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 202
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 203
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    .line 204
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    .line 206
    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .line 255
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    .line 256
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    .line 260
    :cond_1
    return-void
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    .line 247
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    .line 250
    :cond_1
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setFontSize(F)V
    .locals 2
    .param p1, "fontSize"    # F

    .line 235
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    .line 236
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 237
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    move p1, v0

    .line 242
    :cond_1
    float-to-int v0, p1

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    .line 243
    return-void
.end method

.method public setFontStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "fontStyleString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 290
    const/4 v0, -0x1

    .line 291
    .local v0, "fontStyle":I
    const-string v1, "italic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const/4 v0, 0x2

    goto :goto_0

    .line 293
    :cond_0
    const-string v1, "normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const/4 v0, 0x0

    .line 296
    :cond_1
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    if-eq v0, v1, :cond_2

    .line 297
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    .line 299
    :cond_2
    return-void
.end method

.method public setFontWeight(Ljava/lang/String;)V
    .locals 5
    .param p1, "fontWeightString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 271
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 272
    invoke-static {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->parseNumericFontWeight(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 273
    .local v1, "fontWeightNumeric":I
    :goto_0
    const/4 v2, -0x1

    .line 274
    .local v2, "fontWeight":I
    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_3

    const-string v4, "bold"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    const-string v4, "normal"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eq v1, v0, :cond_4

    if-ge v1, v3, :cond_4

    .line 278
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 275
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 280
    :cond_4
    :goto_2
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-eq v2, v0, :cond_5

    .line 281
    iput v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    .line 283
    :cond_5
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 0
    .param p1, "includepad"    # Z

    .line 302
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    .line 303
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .param p1, "letterSpacing"    # F

    .line 193
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 194
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 195
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 196
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    .line 197
    return-void
.end method

.method public setLineHeight(F)V
    .locals 1
    .param p1, "lineHeight"    # F

    .line 181
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    .line 182
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 183
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    goto :goto_1

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_1

    .line 187
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 190
    :goto_1
    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 1
    .param p1, "numberOfLines"    # I

    .line 177
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    .line 178
    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 5
    .param p1, "textAlign"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 209
    const-string v0, "justify"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x1a

    if-eqz v0, :cond_1

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 211
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mJustificationMode:I

    .line 213
    :cond_0
    iput v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_1

    .line 215
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 216
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mJustificationMode:I

    .line 219
    :cond_2
    if-eqz p1, :cond_7

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 221
    :cond_3
    const-string v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iput v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_1

    .line 223
    :cond_4
    const-string v0, "right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_1

    .line 225
    :cond_5
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_1

    .line 228
    :cond_6
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_7
    :goto_0
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 232
    :goto_1
    return-void
.end method

.method public setTextBreakStrategy(Ljava/lang/String;)V
    .locals 3
    .param p1, "textBreakStrategy"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    if-eqz p1, :cond_4

    const-string v0, "highQuality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    const-string v0, "simple"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    goto :goto_1

    .line 328
    :cond_2
    const-string v0, "balanced"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    goto :goto_1

    .line 331
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textBreakStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_4
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    .line 334
    :goto_1
    return-void
.end method

.method public setTextDecorationLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "textDecorationLineString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 307
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 308
    if-eqz p1, :cond_2

    .line 309
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 310
    .local v3, "textDecorationLineSubString":Ljava/lang/String;
    const-string v4, "underline"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 311
    iput-boolean v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    goto :goto_1

    .line 312
    :cond_0
    const-string v4, "line-through"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    iput-boolean v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 309
    .end local v3    # "textDecorationLineSubString":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_2
    return-void
.end method

.method public setTextShadowColor(I)V
    .locals 1
    .param p1, "textShadowColor"    # I

    .line 361
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    if-eq p1, v0, :cond_0

    .line 362
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 365
    :cond_0
    return-void
.end method

.method public setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "offsetMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 338
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 340
    if-eqz p1, :cond_1

    .line 341
    const-string v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    nop

    .line 344
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 346
    :cond_0
    const-string v0, "height"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    nop

    .line 349
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 352
    :cond_1
    return-void
.end method

.method public setTextShadowRadius(F)V
    .locals 1
    .param p1, "textShadowRadius"    # F

    .line 355
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 356
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    .line 358
    :cond_0
    return-void
.end method

.method public setTextTransform(Ljava/lang/String;)V
    .locals 3
    .param p1, "textTransform"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 368
    if-eqz p1, :cond_4

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    const-string v0, "uppercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 372
    :cond_1
    const-string v0, "lowercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 374
    :cond_2
    const-string v0, "capitalize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 377
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textTransform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_4
    :goto_0
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    .line 379
    :goto_1
    return-void
.end method
