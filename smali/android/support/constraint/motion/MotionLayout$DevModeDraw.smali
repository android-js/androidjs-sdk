.class Landroid/support/constraint/motion/MotionLayout$DevModeDraw;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevModeDraw"
.end annotation


# static fields
.field private static final DEBUG_PATH_TICKS_PER_MS:I = 0x10


# instance fields
.field final DIAMOND_SIZE:I

.field final GRAPH_COLOR:I

.field final KEYFRAME_COLOR:I

.field final RED_COLOR:I

.field final SHADOW_COLOR:I

.field mBounds:Landroid/graphics/Rect;

.field mDashPathEffect:Landroid/graphics/DashPathEffect;

.field mFillPaint:Landroid/graphics/Paint;

.field mKeyFrameCount:I

.field mKeyFramePoints:[F

.field mPaint:Landroid/graphics/Paint;

.field mPaintGraph:Landroid/graphics/Paint;

.field mPaintKeyframes:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mPathMode:[I

.field mPoints:[F

.field mPresentationMode:Z

.field private mRectangle:[F

.field mShadowTranslate:I

.field mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method public constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 6

    .line 2548
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2537
    const/16 v0, -0x55cd

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->RED_COLOR:I

    .line 2538
    const v1, -0x1f8a66

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->KEYFRAME_COLOR:I

    .line 2539
    const v2, -0xcc5600

    iput v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->GRAPH_COLOR:I

    .line 2540
    const/high16 v3, 0x77000000

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->SHADOW_COLOR:I

    .line 2541
    const/16 v3, 0xa

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->DIAMOND_SIZE:I

    .line 2544
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 2545
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPresentationMode:Z

    .line 2546
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 2549
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 2550
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2551
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2552
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2553
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2555
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 2556
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2557
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2558
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2559
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2561
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2562
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2563
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2564
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2565
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2567
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 2568
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2569
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2570
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2571
    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    .line 2572
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 2573
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2574
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 2575
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2576
    const/16 p1, 0x64

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    .line 2577
    const/16 p1, 0x32

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    .line 2579
    iget-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPresentationMode:Z

    if-eqz p1, :cond_0

    .line 2580
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2581
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2582
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2583
    const/4 p1, 0x4

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 2585
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private drawBasicPath(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2657
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2658
    return-void
.end method

.method private drawPathAsConfigured(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2731
    const/4 v0, 0x0

    .line 2732
    .local v0, "path":Z
    const/4 v1, 0x0

    .line 2733
    .local v1, "cart":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    if-ge v2, v3, :cond_2

    .line 2734
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2735
    const/4 v0, 0x1

    .line 2737
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2738
    const/4 v1, 0x1

    .line 2733
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2741
    .end local v2    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 2742
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelative(Landroid/graphics/Canvas;)V

    .line 2744
    :cond_3
    if-eqz v1, :cond_4

    .line 2745
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    .line 2747
    :cond_4
    return-void
.end method

.method private drawPathCartesian(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2775
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 2776
    .local v2, "x1":F
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 2777
    .local v4, "y1":F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget v5, v1, v5

    .line 2778
    .local v5, "x2":F
    array-length v6, v1

    sub-int/2addr v6, v3

    aget v1, v1, v6

    .line 2780
    .local v1, "y2":F
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 2781
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2780
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2782
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 2783
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2782
    move-object/from16 v12, p1

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2784
    return-void
.end method

.method private drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2787
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v2, 0x0

    aget v8, v1, v2

    .line 2788
    .local v8, "x1":F
    const/4 v2, 0x1

    aget v9, v1, v2

    .line 2789
    .local v9, "y1":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget v10, v1, v3

    .line 2790
    .local v10, "x2":F
    array-length v3, v1

    sub-int/2addr v3, v2

    aget v11, v1, v3

    .line 2791
    .local v11, "y2":F
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 2792
    .local v12, "minx":F
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 2793
    .local v13, "maxy":F
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v14, p2, v1

    .line 2794
    .local v14, "xgap":F
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v15, v1, p3

    .line 2796
    .local v15, "ygap":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v2, v14, v16

    sub-float v3, v10, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2797
    .local v5, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2798
    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v14, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v20, v1, v2

    .line 2799
    .local v20, "off":F
    add-float v1, v20, v12

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, p3, v2

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2800
    nop

    .line 2801
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2800
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v21, v3

    move/from16 v3, p3

    move-object/from16 v22, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v22, "text":Ljava/lang/String;
    move/from16 v5, p3

    move/from16 v23, v8

    move-object v8, v6

    .end local v8    # "x1":F
    .local v23, "x1":F
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-float v2, v15, v16

    sub-float v3, v11, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2805
    .end local v22    # "text":Ljava/lang/String;
    .local v8, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2806
    div-float v1, v15, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v16, v1, v2

    .line 2807
    .end local v20    # "off":F
    .local v16, "off":F
    const/high16 v1, 0x40a00000    # 5.0f

    add-float v1, p2, v1

    sub-float v2, v13, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2808
    nop

    .line 2809
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2808
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2810
    return-void
.end method

.method private drawPathRelative(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2726
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget v5, v0, v2

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v6, v0, v2

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2728
    return-void
.end method

.method private drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2750
    move-object/from16 v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v2, 0x0

    aget v9, v1, v2

    .line 2751
    .local v9, "x1":F
    const/4 v2, 0x1

    aget v10, v1, v2

    .line 2752
    .local v10, "y1":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget v11, v1, v3

    .line 2753
    .local v11, "x2":F
    array-length v3, v1

    sub-int/2addr v3, v2

    aget v12, v1, v3

    .line 2754
    .local v12, "y2":F
    sub-float v1, v9, v11

    float-to-double v1, v1

    sub-float v3, v10, v12

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v13, v1

    .line 2755
    .local v13, "dist":F
    sub-float v1, v7, v9

    sub-float v2, v11, v9

    mul-float v1, v1, v2

    sub-float v2, v8, v10

    sub-float v3, v12, v10

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v2, v13, v13

    div-float v14, v1, v2

    .line 2756
    .local v14, "t":F
    sub-float v1, v11, v9

    mul-float v1, v1, v14

    add-float v15, v9, v1

    .line 2757
    .local v15, "xp":F
    sub-float v1, v12, v10

    mul-float v1, v1, v14

    add-float v6, v10, v1

    .line 2759
    .local v6, "yp":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object v5, v1

    .line 2760
    .local v5, "path":Landroid/graphics/Path;
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2761
    invoke-virtual {v5, v15, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2762
    sub-float v1, v15, v7

    float-to-double v1, v1

    sub-float v3, v6, v8

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v4, v1

    .line 2763
    .local v4, "len":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v4, v2

    div-float/2addr v3, v13

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2764
    .local v3, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2765
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v22, v1, v2

    .line 2766
    .local v22, "off":F
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v20, -0x3e600000    # -20.0f

    move-object/from16 v16, p1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v22

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2767
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move/from16 v2, p2

    .end local v3    # "text":Ljava/lang/String;
    .local v17, "text":Ljava/lang/String;
    move/from16 v3, p3

    move/from16 v18, v4

    .end local v4    # "len":F
    .local v18, "len":F
    move v4, v15

    move-object/from16 v19, v5

    .end local v5    # "path":Landroid/graphics/Path;
    .local v19, "path":Landroid/graphics/Path;
    move v5, v6

    move/from16 v20, v6

    .end local v6    # "yp":F
    .local v20, "yp":F
    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2768
    return-void
.end method

.method private drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "viewWidth"    # I
    .param p5, "viewHeight"    # I

    .line 2813
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 2814
    .local v8, "x1":F
    const/4 v9, 0x0

    .line 2815
    .local v9, "y1":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2816
    .local v10, "x2":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 2817
    .local v11, "y2":F
    const/4 v12, 0x0

    .line 2818
    .local v12, "minx":F
    const/4 v13, 0x0

    .line 2819
    .local v13, "maxy":F
    move/from16 v14, p2

    .line 2820
    .local v14, "xgap":F
    move/from16 v15, p3

    .line 2822
    .local v15, "ygap":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    sub-float v2, v14, v2

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v2, v2, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v3

    sub-int v3, v3, p4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2823
    .local v5, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2824
    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v14, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v20, v1, v2

    .line 2825
    .local v20, "off":F
    add-float v1, v20, v12

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, p3, v2

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2826
    nop

    .line 2827
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2826
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v21, v3

    move/from16 v3, p3

    move-object/from16 v22, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v22, "text":Ljava/lang/String;
    move/from16 v5, p3

    move/from16 v23, v8

    move-object v8, v6

    .end local v8    # "x1":F
    .local v23, "x1":F
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    sub-float v2, v15, v2

    mul-float v2, v2, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v3

    sub-int v3, v3, p5

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2831
    .end local v22    # "text":Ljava/lang/String;
    .local v8, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2832
    div-float v1, v15, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v16, v1, v2

    .line 2833
    .end local v20    # "off":F
    .local v16, "off":F
    const/high16 v1, 0x40a00000    # 5.0f

    add-float v1, p2, v1

    sub-float v2, v13, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2834
    nop

    .line 2835
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2834
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2836
    return-void
.end method

.method private drawRectangle(Landroid/graphics/Canvas;Landroid/support/constraint/motion/MotionController;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 2839
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2840
    const/16 v0, 0x32

    .line 2841
    .local v0, "rectFrames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 2842
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 2843
    .local v2, "p":F
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/support/constraint/motion/MotionController;->buildRect(F[FI)V

    .line 2844
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    aget v4, v5, v4

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2845
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2846
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x4

    aget v5, v4, v5

    const/4 v6, 0x5

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2847
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x6

    aget v5, v4, v5

    const/4 v6, 0x7

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2848
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 2841
    .end local v2    # "p":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2850
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x44000000    # 512.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2851
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2852
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2854
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2855
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2856
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2857
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # I
    .param p3, "keyFrames"    # I
    .param p4, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 2661
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    const/4 v0, 0x0

    .line 2662
    .local v0, "viewWidth":I
    const/4 v1, 0x0

    .line 2663
    .local v1, "viewHeight":I
    iget-object v2, v9, Landroid/support/constraint/motion/MotionController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2664
    iget-object v2, v9, Landroid/support/constraint/motion/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2665
    iget-object v2, v9, Landroid/support/constraint/motion/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    move v10, v0

    move v11, v1

    goto :goto_0

    .line 2663
    :cond_0
    move v10, v0

    move v11, v1

    .line 2667
    .end local v0    # "viewWidth":I
    .end local v1    # "viewHeight":I
    .local v10, "viewWidth":I
    .local v11, "viewHeight":I
    :goto_0
    const/4 v0, 0x1

    move v12, v0

    .local v12, "i":I
    :goto_1
    add-int/lit8 v0, p3, -0x1

    const/4 v13, 0x2

    const/4 v1, 0x1

    if-ge v12, v0, :cond_b

    .line 2668
    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    add-int/lit8 v3, v12, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_1

    .line 2670
    goto/16 :goto_4

    .line 2673
    :cond_1
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    mul-int/lit8 v3, v12, 0x2

    aget v14, v2, v3

    .line 2674
    .local v14, "x":F
    mul-int/lit8 v3, v12, 0x2

    add-int/2addr v3, v1

    aget v15, v2, v3

    .line 2675
    .local v15, "y":F
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2676
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x41200000    # 10.0f

    add-float v4, v15, v3

    invoke-virtual {v2, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2677
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    add-float v4, v14, v3

    invoke-virtual {v2, v4, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2678
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    sub-float v4, v15, v3

    invoke-virtual {v2, v14, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2679
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    sub-float v3, v14, v3

    invoke-virtual {v2, v3, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2680
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 2682
    add-int/lit8 v2, v12, -0x1

    invoke-virtual {v9, v2}, Landroid/support/constraint/motion/MotionController;->getKeyFrame(I)Landroid/support/constraint/motion/MotionPaths;

    move-result-object v16

    .line 2683
    .local v16, "framePoint":Landroid/support/constraint/motion/MotionPaths;
    const/16 v17, 0x0

    .line 2684
    .local v17, "dx":F
    const/16 v18, 0x0

    .line 2685
    .local v18, "dy":F
    const/4 v5, 0x3

    if-ne v8, v0, :cond_5

    .line 2687
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    add-int/lit8 v2, v12, -0x1

    aget v2, v0, v2

    if-ne v2, v1, :cond_2

    .line 2688
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 2689
    :cond_2
    add-int/lit8 v1, v12, -0x1

    aget v1, v0, v1

    if-ne v1, v13, :cond_3

    .line 2690
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 2691
    :cond_3
    add-int/lit8 v1, v12, -0x1

    aget v0, v0, v1

    if-ne v0, v5, :cond_4

    .line 2692
    sub-float v2, v14, v17

    sub-float v3, v15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    .line 2695
    :cond_4
    :goto_2
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v1, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2697
    :cond_5
    if-ne v8, v13, :cond_6

    .line 2698
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    .line 2700
    :cond_6
    const/4 v0, 0x3

    if-ne v8, v0, :cond_7

    .line 2701
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    .line 2703
    :cond_7
    const/4 v0, 0x6

    if-ne v8, v0, :cond_8

    .line 2704
    sub-float v2, v14, v17

    sub-float v3, v15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    .line 2706
    :cond_8
    const/4 v0, 0x0

    cmpl-float v1, v17, v0

    if-nez v1, :cond_a

    cmpl-float v0, v18, v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 2709
    :cond_9
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v1, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 2707
    :cond_a
    :goto_3
    sub-float v2, v14, v17

    sub-float v3, v15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawTranslation(Landroid/graphics/Canvas;FFFF)V

    .line 2667
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v16    # "framePoint":Landroid/support/constraint/motion/MotionPaths;
    .end local v17    # "dx":F
    .end local v18    # "dy":F
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2712
    .end local v12    # "i":I
    :cond_b
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    array-length v2, v0

    if-le v2, v1, :cond_c

    .line 2714
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v0, v0, v1

    iget-object v3, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v7, v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2715
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    array-length v2, v0

    sub-int/2addr v2, v13

    aget v2, v0, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    aget v0, v0, v3

    iget-object v1, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v0, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2718
    :cond_c
    return-void
.end method

.method private drawTranslation(Landroid/graphics/Canvas;FFFF)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .line 2721
    move-object v0, p0

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2722
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2723
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "duration"    # I
    .param p4, "debugPath"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/support/constraint/motion/MotionController;",
            ">;II)V"
        }
    .end annotation

    .line 2590
    .local p2, "frameArrayList":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/support/constraint/motion/MotionController;>;"
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2593
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2594
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionLayout;->access$000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2596
    .local v0, "str":Ljava/lang/String;
    const/high16 v1, 0x41200000    # 10.0f

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2597
    const/high16 v1, 0x41300000    # 11.0f

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1d

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2599
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 2600
    .local v1, "motionController":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionController;->getDrawPath()I

    move-result v2

    .line 2601
    .local v2, "mode":I
    if-lez p4, :cond_2

    if-nez v2, :cond_2

    .line 2602
    const/4 v2, 0x1

    .line 2604
    :cond_2
    if-nez v2, :cond_3

    .line 2605
    goto :goto_0

    .line 2608
    :cond_3
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/motion/MotionController;->buildKeyFrames([F[I)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 2610
    const/4 v3, 0x1

    if-lt v2, v3, :cond_6

    .line 2612
    div-int/lit8 v3, p3, 0x10

    .line 2613
    .local v3, "frames":I
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    if-eqz v4, :cond_4

    array-length v4, v4

    mul-int/lit8 v5, v3, 0x2

    if-eq v4, v5, :cond_5

    .line 2614
    :cond_4
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    .line 2615
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 2618
    :cond_5
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2620
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x77000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2621
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2622
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2623
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2624
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    invoke-virtual {v1, v4, v3}, Landroid/support/constraint/motion/MotionController;->buildPath([FI)V

    .line 2625
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    invoke-virtual {p0, p1, v2, v4, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V

    .line 2626
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/16 v5, -0x55cd

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2627
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    const v5, -0x1f8a66

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2628
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2629
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    const v5, -0xcc5600

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2631
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    neg-int v5, v4

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2632
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    invoke-virtual {p0, p1, v2, v4, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V

    .line 2633
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 2634
    invoke-direct {p0, p1, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawRectangle(Landroid/graphics/Canvas;Landroid/support/constraint/motion/MotionController;)V

    .line 2638
    .end local v1    # "motionController":Landroid/support/constraint/motion/MotionController;
    .end local v2    # "mode":I
    .end local v3    # "frames":I
    :cond_6
    goto/16 :goto_0

    .line 2639
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2640
    return-void

    .line 2591
    :cond_8
    :goto_1
    return-void
.end method

.method public drawAll(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # I
    .param p3, "keyFrames"    # I
    .param p4, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 2643
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2644
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathAsConfigured(Landroid/graphics/Canvas;)V

    .line 2646
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2647
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelative(Landroid/graphics/Canvas;)V

    .line 2649
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2650
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    .line 2652
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawBasicPath(Landroid/graphics/Canvas;)V

    .line 2653
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawTicks(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V

    .line 2654
    return-void
.end method

.method getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 2771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2772
    return-void
.end method
