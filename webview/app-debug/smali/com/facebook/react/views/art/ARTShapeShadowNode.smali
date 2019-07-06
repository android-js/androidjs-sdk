.class public Lcom/facebook/react/views/art/ARTShapeShadowNode;
.super Lcom/facebook/react/views/art/ARTVirtualNode;
.source "ARTShapeShadowNode.java"


# static fields
.field private static final CAP_BUTT:I = 0x0

.field private static final CAP_ROUND:I = 0x1

.field private static final CAP_SQUARE:I = 0x2

.field private static final COLOR_TYPE_LINEAR_GRADIENT:I = 0x1

.field private static final COLOR_TYPE_PATTERN:I = 0x3

.field private static final COLOR_TYPE_RADIAL_GRADIENT:I = 0x2

.field private static final COLOR_TYPE_SOLID_COLOR:I = 0x0

.field private static final JOIN_BEVEL:I = 0x2

.field private static final JOIN_MITER:I = 0x0

.field private static final JOIN_ROUND:I = 0x1

.field private static final PATH_TYPE_ARC:I = 0x4

.field private static final PATH_TYPE_CLOSE:I = 0x1

.field private static final PATH_TYPE_CURVETO:I = 0x3

.field private static final PATH_TYPE_LINETO:I = 0x2

.field private static final PATH_TYPE_MOVETO:I


# instance fields
.field private mBrushData:[F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mPath:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStrokeCap:I

.field private mStrokeColor:[F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStrokeDash:[F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStrokeJoin:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/facebook/react/views/art/ARTVirtualNode;-><init>()V

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeWidth:F

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeCap:I

    .line 59
    iput v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeJoin:I

    .line 61
    return-void
.end method

.method private createPath([F)Landroid/graphics/Path;
    .locals 17
    .param p1, "data"    # [F

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 268
    .local v2, "path":Landroid/graphics/Path;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_9

    .line 271
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v3, v1, v3

    float-to-int v10, v3

    .line 272
    .local v10, "type":I
    if-eqz v10, :cond_8

    const/4 v3, 0x1

    if-eq v10, v3, :cond_7

    const/4 v5, 0x2

    if-eq v10, v5, :cond_6

    const/4 v5, 0x3

    if-eq v10, v5, :cond_5

    const/4 v5, 0x4

    if-ne v10, v5, :cond_4

    .line 293
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v4, v1, v4

    iget v6, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v4, v4, v6

    .line 294
    .local v4, "x":F
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v1, v5

    iget v7, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v5, v5, v7

    .line 295
    .local v5, "y":F
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v1, v6

    iget v8, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v6, v6, v8

    .line 296
    .local v6, "r":F
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget v7, v1, v7

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v7, v11

    .line 297
    .local v7, "start":F
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aget v8, v1, v8

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v8, v11

    .line 299
    .local v8, "end":F
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    aget v9, v1, v9

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 300
    .local v3, "counterClockwise":Z
    :goto_1
    sub-float v9, v8, v7

    .line 301
    .local v9, "sweep":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x43b40000    # 360.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_2

    .line 302
    if-eqz v3, :cond_1

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_2

    :cond_1
    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    :goto_2
    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 304
    :cond_2
    invoke-direct {v0, v9, v13}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->modulus(FF)F

    move-result v9

    .line 305
    if-eqz v3, :cond_3

    cmpg-float v12, v9, v13

    if-gez v12, :cond_3

    .line 307
    const/high16 v12, -0x40800000    # -1.0f

    sub-float/2addr v13, v9

    mul-float v9, v13, v12

    .line 310
    :cond_3
    new-instance v12, Landroid/graphics/RectF;

    sub-float v13, v4, v6

    sub-float v14, v5, v6

    add-float v15, v4, v6

    move/from16 v16, v3

    .end local v3    # "counterClockwise":Z
    .local v16, "counterClockwise":Z
    add-float v3, v5, v6

    invoke-direct {v12, v13, v14, v15, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v12

    .line 311
    .local v3, "oval":Landroid/graphics/RectF;
    invoke-virtual {v2, v3, v7, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 313
    .end local v3    # "oval":Landroid/graphics/RectF;
    nop

    .line 319
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "r":F
    .end local v7    # "start":F
    .end local v8    # "end":F
    .end local v9    # "sweep":F
    .end local v10    # "type":I
    .end local v16    # "counterClockwise":Z
    :goto_3
    move v3, v11

    goto/16 :goto_4

    .line 316
    .end local v11    # "i":I
    .local v4, "i":I
    .restart local v10    # "type":I
    :cond_4
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized drawing instruction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .local v3, "i":I
    aget v4, v1, v4

    iget v5, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v4, v4, v5

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget v3, v1, v3

    iget v6, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v6, v6, v3

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    aget v5, v1, v5

    iget v7, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v7, v7, v5

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v1, v3

    iget v8, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v8, v8, v3

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    aget v5, v1, v5

    iget v9, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v9, v9, v5

    add-int/lit8 v11, v3, 0x1

    .end local v3    # "i":I
    .restart local v11    # "i":I
    aget v3, v1, v3

    iget v5, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v12, v3, v5

    move-object v3, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v12

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 290
    move v3, v11

    goto :goto_4

    .line 280
    .end local v11    # "i":I
    .restart local v4    # "i":I
    :cond_6
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget v4, v1, v4

    iget v5, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v4, v4, v5

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v1, v3

    iget v6, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v3, v3, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    move v3, v5

    goto :goto_4

    .line 277
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 278
    move v3, v4

    goto :goto_4

    .line 274
    :cond_8
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget v4, v1, v4

    iget v5, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v4, v4, v5

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v1, v3

    iget v6, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v3, v3, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 275
    move v3, v5

    .line 319
    .end local v5    # "i":I
    .end local v10    # "type":I
    .restart local v3    # "i":I
    :goto_4
    goto/16 :goto_0

    .line 320
    :cond_9
    return-object v2
.end method

.method private modulus(FF)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 249
    rem-float v0, p1, p2

    .line 250
    .local v0, "remainder":F
    move v1, v0

    .line 251
    .local v1, "modulus":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 252
    add-float/2addr v1, p2

    .line 254
    :cond_0
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 108
    iget v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mOpacity:F

    mul-float p3, p3, v0

    .line 109
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    .line 110
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->saveAndSetupCanvas(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setupFillPaint(Landroid/graphics/Paint;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setupStrokePaint(Landroid/graphics/Paint;F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->restoreCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Shapes should have a valid path (d) prop"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdateSeen()V

    .line 124
    return-void
.end method

.method public setFill(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "fillColors"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fill"
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/facebook/react/views/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 86
    return-void
.end method

.method public setShapePath(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "shapePath"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "d"
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/facebook/react/views/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;)[F

    move-result-object v0

    .line 66
    .local v0, "pathData":[F
    invoke-direct {p0, v0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->createPath([F)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mPath:Landroid/graphics/Path;

    .line 67
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 68
    return-void
.end method

.method public setStroke(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "strokeColors"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stroke"
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/facebook/react/views/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeColor:[F

    .line 73
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 74
    return-void
.end method

.method public setStrokeCap(I)V
    .locals 0
    .param p1, "strokeCap"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeCap"
    .end annotation

    .line 96
    iput p1, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeCap:I

    .line 97
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 98
    return-void
.end method

.method public setStrokeDash(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "strokeDash"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDash"
    .end annotation

    .line 78
    invoke-static {p1}, Lcom/facebook/react/views/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeDash:[F

    .line 79
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 80
    return-void
.end method

.method public setStrokeJoin(I)V
    .locals 0
    .param p1, "strokeJoin"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeJoin"
    .end annotation

    .line 102
    iput p1, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeJoin:I

    .line 103
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 104
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "strokeWidth"
    .end annotation

    .line 90
    iput p1, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeWidth:F

    .line 91
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->markUpdated()V

    .line 92
    return-void
.end method

.method protected setupFillPaint(Landroid/graphics/Paint;F)Z
    .locals 21
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "opacity"    # F

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    array-length v2, v2

    if-lez v2, :cond_6

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->reset()V

    .line 184
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 185
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v4, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    aget v5, v4, v3

    float-to-int v5, v5

    .line 187
    .local v5, "colorType":I
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/high16 v9, 0x437f0000    # 255.0f

    if-eqz v5, :cond_4

    const-string v10, "ReactNative"

    if-eq v5, v2, :cond_0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ART: Color type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 197
    :cond_0
    array-length v11, v4

    const/4 v12, 0x5

    if-ge v11, v12, :cond_1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ARTShapeShadowNode setupFillPaint] expects 5 elements, received "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v3

    .line 203
    :cond_1
    aget v4, v4, v2

    iget v10, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v4, v4, v10

    .line 204
    .local v4, "gradientStartX":F
    iget-object v10, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    aget v10, v10, v7

    iget v11, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v10, v10, v11

    .line 205
    .local v10, "gradientStartY":F
    iget-object v11, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    aget v11, v11, v6

    iget v13, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v11, v11, v13

    .line 206
    .local v11, "gradientEndX":F
    iget-object v13, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    aget v8, v13, v8

    iget v13, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v8, v8, v13

    .line 207
    .local v8, "gradientEndY":F
    iget-object v13, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    array-length v13, v13

    sub-int/2addr v13, v12

    div-int/lit8 v15, v13, 0x5

    .line 208
    .local v15, "stops":I
    const/4 v13, 0x0

    .line 209
    .local v13, "colors":[I
    const/4 v14, 0x0

    .line 210
    .local v14, "positions":[F
    if-lez v15, :cond_3

    .line 211
    new-array v13, v15, [I

    .line 212
    new-array v14, v15, [F

    .line 213
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_0
    if-ge v6, v15, :cond_2

    .line 214
    iget-object v7, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    mul-int/lit8 v18, v15, 0x4

    add-int/lit8 v18, v18, 0x5

    add-int v18, v18, v6

    aget v18, v7, v18

    aput v18, v14, v6

    .line 215
    mul-int/lit8 v18, v6, 0x4

    add-int/lit8 v18, v18, 0x5

    add-int/lit8 v18, v18, 0x0

    aget v18, v7, v18

    mul-float v3, v18, v9

    float-to-int v3, v3

    .line 216
    .local v3, "r":I
    mul-int/lit8 v18, v6, 0x4

    add-int/lit8 v18, v18, 0x5

    add-int/lit8 v18, v18, 0x1

    aget v18, v7, v18

    mul-float v2, v18, v9

    float-to-int v2, v2

    .line 217
    .local v2, "g":I
    mul-int/lit8 v18, v6, 0x4

    add-int/lit8 v18, v18, 0x5

    const/16 v16, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v18, v7, v18

    mul-float v12, v18, v9

    float-to-int v12, v12

    .line 218
    .local v12, "b":I
    mul-int/lit8 v18, v6, 0x4

    const/16 v20, 0x5

    add-int/lit8 v18, v18, 0x5

    const/16 v17, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v7, v7, v18

    mul-float v7, v7, v9

    float-to-int v7, v7

    .line 219
    .local v7, "a":I
    invoke-static {v7, v3, v2, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    aput v18, v13, v6

    .line 213
    .end local v2    # "g":I
    .end local v3    # "r":I
    .end local v7    # "a":I
    .end local v12    # "b":I
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v12, 0x5

    goto :goto_0

    :cond_2
    move-object v2, v13

    move-object v3, v14

    goto :goto_1

    .line 210
    .end local v6    # "i":I
    :cond_3
    move-object v2, v13

    move-object v3, v14

    .line 222
    .end local v13    # "colors":[I
    .end local v14    # "positions":[F
    .local v2, "colors":[I
    .local v3, "positions":[F
    :goto_1
    new-instance v6, Landroid/graphics/LinearGradient;

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v6

    move v14, v4

    move v7, v15

    .end local v15    # "stops":I
    .local v7, "stops":I
    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v8

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    goto :goto_3

    .line 189
    .end local v2    # "colors":[I
    .end local v3    # "positions":[F
    .end local v4    # "gradientStartX":F
    .end local v7    # "stops":I
    .end local v8    # "gradientEndY":F
    .end local v10    # "gradientStartY":F
    .end local v11    # "gradientEndX":F
    :cond_4
    array-length v2, v4

    if-le v2, v8, :cond_5

    aget v2, v4, v8

    mul-float v2, v2, p2

    mul-float v2, v2, v9

    goto :goto_2

    :cond_5
    mul-float v2, p2, v9

    :goto_2
    float-to-int v2, v2

    iget-object v3, v0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mBrushData:[F

    const/4 v4, 0x1

    aget v6, v3, v4

    mul-float v6, v6, v9

    float-to-int v4, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    mul-float v6, v6, v9

    float-to-int v6, v6

    const/4 v7, 0x3

    aget v3, v3, v7

    mul-float v3, v3, v9

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 194
    nop

    .line 238
    :goto_3
    const/4 v2, 0x1

    return v2

    .line 240
    .end local v5    # "colorType":I
    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method protected setupStrokePaint(Landroid/graphics/Paint;F)Z
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "opacity"    # F

    .line 131
    iget v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeWidth:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeColor:[F

    if-eqz v0, :cond_9

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 136
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget v3, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeCap:I

    const-string v4, " unrecognized"

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    if-ne v3, v5, :cond_1

    .line 142
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 143
    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeCap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeCap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 146
    goto :goto_0

    .line 139
    :cond_3
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    nop

    .line 151
    :goto_0
    iget v3, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeJoin:I

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    if-ne v3, v5, :cond_4

    .line 156
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 157
    goto :goto_1

    .line 162
    :cond_4
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeJoin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeJoin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_5
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 160
    goto :goto_1

    .line 153
    :cond_6
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 154
    nop

    .line 165
    :goto_1
    iget v3, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeWidth:F

    iget v4, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mScale:F

    mul-float v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v3, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeColor:[F

    array-length v4, v3

    const/4 v6, 0x3

    const/high16 v7, 0x437f0000    # 255.0f

    if-le v4, v6, :cond_7

    aget v3, v3, v6

    mul-float v3, v3, p2

    mul-float v3, v3, v7

    goto :goto_2

    :cond_7
    mul-float v3, p2, v7

    :goto_2
    float-to-int v3, v3

    iget-object v4, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeColor:[F

    aget v1, v4, v1

    mul-float v1, v1, v7

    float-to-int v1, v1

    aget v6, v4, v0

    mul-float v6, v6, v7

    float-to-int v6, v6

    aget v4, v4, v5

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {p1, v3, v1, v6, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 171
    iget-object v1, p0, Lcom/facebook/react/views/art/ARTShapeShadowNode;->mStrokeDash:[F

    if-eqz v1, :cond_8

    array-length v3, v1

    if-lez v3, :cond_8

    .line 172
    new-instance v3, Landroid/graphics/DashPathEffect;

    invoke-direct {v3, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 174
    :cond_8
    return v0

    .line 132
    :cond_9
    :goto_3
    return v1
.end method
