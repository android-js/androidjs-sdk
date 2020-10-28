.class public Landroid/support/constraint/utils/MotionTelltales;
.super Landroid/support/constraint/utils/MockView;
.source "MotionTelltales.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionTelltales"


# instance fields
.field mInvertMatrix:Landroid/graphics/Matrix;

.field mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mPaintTelltales:Landroid/graphics/Paint;

.field mTailColor:I

.field mTailScale:F

.field mVelocityMode:I

.field velocity:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/support/constraint/utils/MockView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/utils/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/utils/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 p3, 0x2

    .line 49
    new-array p3, p3, [F

    iput-object p3, p0, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    .line 50
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    const p3, -0xff01

    .line 52
    iput p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 53
    iput p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 71
    sget-object v0, Landroid/support/constraint/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 75
    sget v2, Landroid/support/constraint/R$styleable;->MotionTelltales_telltales_tailColor:I

    if-ne v1, v2, :cond_0

    .line 76
    iget v2, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    goto :goto_1

    .line 77
    :cond_0
    sget v2, Landroid/support/constraint/R$styleable;->MotionTelltales_telltales_velocityMode:I

    if-ne v1, v2, :cond_1

    .line 78
    iget v2, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    goto :goto_1

    .line 79
    :cond_1
    sget v2, Landroid/support/constraint/R$styleable;->MotionTelltales_telltales_tailScale:I

    if-ne v1, v2, :cond_2

    .line 80
    iget v2, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_4
    iget-object p1, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    iget p2, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/support/constraint/utils/MockView;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v6, p0

    .line 107
    invoke-super/range {p0 .. p1}, Landroid/support/constraint/utils/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 109
    iget-object v1, v6, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 110
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    if-nez v0, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 112
    instance-of v1, v0, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Landroid/support/constraint/motion/MotionLayout;

    iput-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getWidth()I

    move-result v7

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getHeight()I

    move-result v8

    const/4 v0, 0x5

    .line 119
    new-array v9, v0, [F

    fill-array-data v9, :array_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 120
    :goto_0
    array-length v0, v9

    if-ge v11, v0, :cond_3

    .line 121
    aget v12, v9, v11

    const/4 v13, 0x0

    .line 122
    :goto_1
    array-length v0, v9

    if-ge v13, v0, :cond_2

    .line 123
    aget v14, v9, v13

    .line 124
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v6, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    iget v5, v6, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    move-object/from16 v1, p0

    move v2, v14

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    .line 125
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v1, v6, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    int-to-float v0, v7

    mul-float v16, v0, v14

    int-to-float v0, v8

    mul-float v17, v0, v12

    .line 129
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    aget v1, v0, v10

    iget v2, v6, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    mul-float v1, v1, v2

    sub-float v18, v16, v1

    const/4 v1, 0x1

    .line 130
    aget v1, v0, v1

    mul-float v1, v1, v2

    sub-float v19, v17, v1

    .line 131
    iget-object v1, v6, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 132
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 101
    invoke-super/range {p0 .. p5}, Landroid/support/constraint/utils/MockView;->onLayout(ZIIII)V

    .line 102
    invoke-virtual {p0}, Landroid/support/constraint/utils/MotionTelltales;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/utils/MotionTelltales;->mText:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Landroid/support/constraint/utils/MotionTelltales;->requestLayout()V

    return-void
.end method
