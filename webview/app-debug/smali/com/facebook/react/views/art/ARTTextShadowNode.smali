.class public Lcom/facebook/react/views/art/ARTTextShadowNode;
.super Lcom/facebook/react/views/art/ARTShapeShadowNode;
.source "ARTTextShadowNode.java"


# static fields
.field private static final DEFAULT_FONT_SIZE:I = 0xc

.field private static final PROP_FONT:Ljava/lang/String; = "font"

.field private static final PROP_FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field private static final PROP_FONT_SIZE:Ljava/lang/String; = "fontSize"

.field private static final PROP_FONT_STYLE:Ljava/lang/String; = "fontStyle"

.field private static final PROP_FONT_WEIGHT:Ljava/lang/String; = "fontWeight"

.field private static final PROP_LINES:Ljava/lang/String; = "lines"

.field private static final TEXT_ALIGNMENT_CENTER:I = 0x2

.field private static final TEXT_ALIGNMENT_LEFT:I = 0x0

.field private static final TEXT_ALIGNMENT_RIGHT:I = 0x1


# instance fields
.field private mFrame:Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTextAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mTextAlignment:I

    .line 43
    return-void
.end method

.method private applyTextPropertiesToPaint(Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 100
    iget v0, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mTextAlignment:I

    .line 101
    .local v0, "alignment":I
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 106
    :cond_1
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    goto :goto_0

    .line 103
    :cond_2
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 104
    nop

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mFrame:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v2, :cond_9

    .line 113
    const-string v3, "font"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 114
    iget-object v2, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mFrame:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 115
    .local v2, "font":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v2, :cond_9

    .line 116
    const/high16 v3, 0x41400000    # 12.0f

    .line 117
    .local v3, "fontSize":F
    const-string v4, "fontSize"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    .line 120
    :cond_3
    iget v4, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mScale:F

    mul-float v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    nop

    .line 122
    const-string v4, "fontWeight"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bold"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 123
    .local v4, "isBold":Z
    :goto_1
    nop

    .line 124
    const-string v5, "fontStyle"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "italic"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 126
    .local v1, "isItalic":Z
    :goto_2
    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 127
    const/4 v5, 0x3

    .local v5, "fontStyle":I
    goto :goto_3

    .line 128
    .end local v5    # "fontStyle":I
    :cond_6
    if-eqz v4, :cond_7

    .line 129
    const/4 v5, 0x1

    .restart local v5    # "fontStyle":I
    goto :goto_3

    .line 130
    .end local v5    # "fontStyle":I
    :cond_7
    if-eqz v1, :cond_8

    .line 131
    const/4 v5, 0x2

    .restart local v5    # "fontStyle":I
    goto :goto_3

    .line 133
    .end local v5    # "fontStyle":I
    :cond_8
    const/4 v5, 0x0

    .line 136
    .restart local v5    # "fontStyle":I
    :goto_3
    const-string v6, "fontFamily"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 140
    .end local v1    # "isItalic":Z
    .end local v2    # "font":Lcom/facebook/react/bridge/ReadableMap;
    .end local v3    # "fontSize":F
    .end local v4    # "isBold":Z
    .end local v5    # "fontStyle":I
    :cond_9
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 57
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mFrame:Lcom/facebook/react/bridge/ReadableMap;

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mOpacity:F

    mul-float p3, p3, v0

    .line 61
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    .line 62
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mFrame:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "lines"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mFrame:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 68
    .local v0, "linesProp":Lcom/facebook/react/bridge/ReadableArray;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/art/ARTTextShadowNode;->saveAndSetupCanvas(Landroid/graphics/Canvas;)V

    .line 74
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 75
    .local v1, "lines":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 76
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_4
    const-string v2, "\n"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0, p2, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setupStrokePaint(Landroid/graphics/Paint;F)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_6

    .line 80
    invoke-direct {p0, p2}, Lcom/facebook/react/views/art/ARTTextShadowNode;->applyTextPropertiesToPaint(Landroid/graphics/Paint;)V

    .line 81
    iget-object v3, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mPath:Landroid/graphics/Path;

    if-nez v3, :cond_5

    .line 82
    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v9, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 84
    :cond_5
    iget-object v5, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 87
    :cond_6
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setupFillPaint(Landroid/graphics/Paint;F)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 88
    invoke-direct {p0, p2}, Lcom/facebook/react/views/art/ARTTextShadowNode;->applyTextPropertiesToPaint(Landroid/graphics/Paint;)V

    .line 89
    iget-object v3, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mPath:Landroid/graphics/Path;

    if-nez v3, :cond_7

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v9, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 92
    :cond_7
    iget-object v5, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 95
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/art/ARTTextShadowNode;->restoreCanvas(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTTextShadowNode;->markUpdateSeen()V

    .line 97
    return-void

    .line 69
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_9
    :goto_3
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "alignment"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "alignment"
    .end annotation

    .line 52
    iput p1, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mTextAlignment:I

    .line 53
    return-void
.end method

.method public setFrame(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "frame"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "frame"
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/facebook/react/views/art/ARTTextShadowNode;->mFrame:Lcom/facebook/react/bridge/ReadableMap;

    .line 48
    return-void
.end method
