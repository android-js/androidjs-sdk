.class public Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ReactViewBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;,
        Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    }
.end annotation


# static fields
.field private static final ALL_BITS_SET:I = -0x1

.field private static final ALL_BITS_UNSET:I = 0x0

.field private static final DEFAULT_BORDER_ALPHA:I = 0xff

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_RGB:I


# instance fields
.field private mAlpha:I

.field private mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBorderCornerRadii:[F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBorderRGB:Lcom/facebook/react/uimanager/Spacing;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBorderRadius:F

.field private mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBorderWidth:Lcom/facebook/react/uimanager/Spacing;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCenterDrawPath:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mColor:I

.field private final mContext:Landroid/content/Context;

.field private mInnerBottomLeftCorner:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInnerBottomRightCorner:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInnerClipPathForBorderRadius:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInnerTopLeftCorner:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInnerTopRightCorner:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mNeedUpdatePathForBorderRadius:Z

.field private mOuterClipPathForBorderRadius:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathEffectForBorderStyle:Landroid/graphics/PathEffect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPathForBorder:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPathForBorderRadiusOutline:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTempRectForCenterDrawPath:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 102
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 106
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    .line 107
    const/16 v0, 0xff

    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    .line 125
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method private static colorFromAlphaAndRGBComponents(FF)I
    .locals 3
    .param p0, "alpha"    # F
    .param p1, "rgb"    # F

    .line 1209
    float-to-int v0, p1

    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 1210
    .local v0, "rgbComponent":I
    float-to-int v1, p0

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    .line 1212
    .local v1, "alphaComponent":I
    or-int v2, v0, v1

    return v2
.end method

.method private drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fillColor"    # I
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "x4"    # F
    .param p10, "y4"    # F

    .line 1181
    if-nez p2, :cond_0

    .line 1182
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 1186
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1190
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1191
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1192
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1193
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1194
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p9, p10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1196
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1197
    return-void
.end method

.method private drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1002
    move-object/from16 v11, p0

    iget v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v12

    .line 1003
    .local v12, "useColor":I
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1005
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1003
    :cond_0
    move-object/from16 v13, p1

    .line 1009
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v14

    .line 1011
    .local v14, "borderWidth":Landroid/graphics/RectF;
    iget v0, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1012
    .local v15, "borderLeft":I
    iget v0, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 1013
    .local v16, "borderTop":I
    iget v0, v14, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 1014
    .local v17, "borderRight":I
    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 1017
    .local v18, "borderBottom":I
    if-gtz v15, :cond_2

    if-gtz v17, :cond_2

    if-gtz v16, :cond_2

    if-lez v18, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v27, v12

    move-object/from16 v21, v14

    goto/16 :goto_c

    .line 1018
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 1020
    .local v10, "bounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v1

    .line 1021
    .local v1, "colorLeft":I
    const/4 v9, 0x1

    invoke-direct {v11, v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v19

    .line 1022
    .local v19, "colorTop":I
    const/4 v2, 0x2

    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    .line 1023
    .local v2, "colorRight":I
    const/4 v3, 0x3

    invoke-direct {v11, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v20

    .line 1025
    .local v20, "colorBottom":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_f

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v3

    if-ne v3, v9, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 1027
    .local v3, "isRTL":Z
    :goto_2
    const/4 v4, 0x4

    invoke-direct {v11, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    .line 1028
    .local v5, "colorStart":I
    const/4 v6, 0x5

    invoke-direct {v11, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v7

    .line 1030
    .local v7, "colorEnd":I
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v8

    iget-object v9, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1031
    invoke-direct {v11, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1032
    move v5, v1

    .line 1035
    :cond_4
    invoke-direct {v11, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1036
    move v7, v2

    .line 1039
    :cond_5
    if-eqz v3, :cond_6

    move v4, v7

    goto :goto_3

    :cond_6
    move v4, v5

    .line 1040
    .local v4, "directionAwareColorLeft":I
    :goto_3
    if-eqz v3, :cond_7

    move v6, v5

    goto :goto_4

    :cond_7
    move v6, v7

    .line 1042
    .local v6, "directionAwareColorRight":I
    :goto_4
    move v1, v4

    .line 1043
    move v2, v6

    .line 1044
    .end local v4    # "directionAwareColorLeft":I
    .end local v6    # "directionAwareColorRight":I
    move/from16 v22, v1

    move/from16 v23, v2

    goto :goto_9

    .line 1045
    :cond_8
    if-eqz v3, :cond_9

    move v8, v7

    goto :goto_5

    :cond_9
    move v8, v5

    .line 1046
    .local v8, "directionAwareColorLeft":I
    :goto_5
    if-eqz v3, :cond_a

    move v9, v5

    goto :goto_6

    :cond_a
    move v9, v7

    .line 1048
    .local v9, "directionAwareColorRight":I
    :goto_6
    invoke-direct {v11, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v4

    .line 1049
    .local v4, "isColorStartDefined":Z
    invoke-direct {v11, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    .line 1050
    .local v6, "isColorEndDefined":Z
    if-eqz v3, :cond_b

    move/from16 v22, v6

    goto :goto_7

    :cond_b
    move/from16 v22, v4

    .line 1051
    .local v22, "isDirectionAwareColorLeftDefined":Z
    :goto_7
    if-eqz v3, :cond_c

    move/from16 v23, v4

    goto :goto_8

    :cond_c
    move/from16 v23, v6

    .line 1053
    .local v23, "isDirectionAwareColorRightDefined":Z
    :goto_8
    if-eqz v22, :cond_d

    .line 1054
    move v1, v8

    .line 1057
    :cond_d
    if-eqz v23, :cond_e

    .line 1058
    move v2, v9

    move/from16 v22, v1

    move/from16 v23, v2

    goto :goto_9

    .line 1057
    :cond_e
    move/from16 v22, v1

    move/from16 v23, v2

    goto :goto_9

    .line 1025
    .end local v3    # "isRTL":Z
    .end local v4    # "isColorStartDefined":Z
    .end local v5    # "colorStart":I
    .end local v6    # "isColorEndDefined":Z
    .end local v7    # "colorEnd":I
    .end local v8    # "directionAwareColorLeft":I
    .end local v9    # "directionAwareColorRight":I
    .end local v22    # "isDirectionAwareColorLeftDefined":Z
    .end local v23    # "isDirectionAwareColorRightDefined":Z
    :cond_f
    move/from16 v22, v1

    move/from16 v23, v2

    .line 1063
    .end local v1    # "colorLeft":I
    .end local v2    # "colorRight":I
    .local v22, "colorLeft":I
    .local v23, "colorRight":I
    :goto_9
    iget v9, v10, Landroid/graphics/Rect;->left:I

    .line 1064
    .local v9, "left":I
    iget v8, v10, Landroid/graphics/Rect;->top:I

    .line 1067
    .local v8, "top":I
    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v22

    move/from16 v6, v19

    move/from16 v7, v23

    move v0, v8

    .end local v8    # "top":I
    .local v0, "top":I
    move/from16 v8, v20

    invoke-static/range {v1 .. v8}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->fastBorderCompatibleColorOrZero(IIIIIIII)I

    move-result v8

    .line 1076
    .local v8, "fastBorderColor":I
    if-eqz v8, :cond_15

    .line 1077
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_14

    .line 1079
    iget v1, v10, Landroid/graphics/Rect;->right:I

    .line 1080
    .local v1, "right":I
    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 1082
    .local v7, "bottom":I
    iget-object v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1083
    if-lez v15, :cond_10

    .line 1084
    add-int v6, v9, v15

    .line 1085
    .local v6, "leftInset":I
    int-to-float v3, v9

    int-to-float v4, v0

    int-to-float v5, v6

    sub-int v2, v7, v18

    int-to-float v2, v2

    move/from16 v21, v7

    .end local v7    # "bottom":I
    .local v21, "bottom":I
    iget-object v7, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move/from16 v24, v2

    move-object/from16 v2, p1

    move/from16 v25, v6

    .end local v6    # "leftInset":I
    .local v25, "leftInset":I
    move/from16 v6, v24

    move/from16 v26, v8

    move/from16 v8, v21

    .end local v21    # "bottom":I
    .local v8, "bottom":I
    .local v26, "fastBorderColor":I
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1083
    .end local v25    # "leftInset":I
    .end local v26    # "fastBorderColor":I
    .restart local v7    # "bottom":I
    .local v8, "fastBorderColor":I
    :cond_10
    move/from16 v26, v8

    move v8, v7

    .line 1087
    .end local v7    # "bottom":I
    .local v8, "bottom":I
    .restart local v26    # "fastBorderColor":I
    :goto_a
    if-lez v16, :cond_11

    .line 1088
    add-int v7, v0, v16

    .line 1089
    .local v7, "topInset":I
    add-int v2, v9, v15

    int-to-float v3, v2

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v7

    iget-object v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    move/from16 v24, v7

    .end local v7    # "topInset":I
    .local v24, "topInset":I
    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1091
    .end local v24    # "topInset":I
    :cond_11
    if-lez v17, :cond_12

    .line 1092
    sub-int v7, v1, v17

    .line 1093
    .local v7, "rightInset":I
    int-to-float v3, v7

    add-int v2, v0, v16

    int-to-float v4, v2

    int-to-float v5, v1

    int-to-float v6, v8

    iget-object v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    move/from16 v24, v7

    .end local v7    # "rightInset":I
    .local v24, "rightInset":I
    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1095
    .end local v24    # "rightInset":I
    :cond_12
    if-lez v18, :cond_13

    .line 1096
    sub-int v7, v8, v18

    .line 1097
    .local v7, "bottomInset":I
    int-to-float v3, v9

    int-to-float v4, v7

    sub-int v2, v1, v17

    int-to-float v5, v2

    int-to-float v6, v8

    iget-object v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    move/from16 v24, v7

    .end local v7    # "bottomInset":I
    .local v24, "bottomInset":I
    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1099
    .end local v1    # "right":I
    .end local v8    # "bottom":I
    .end local v24    # "bottomInset":I
    :cond_13
    move/from16 v27, v12

    move-object/from16 v21, v14

    goto/16 :goto_c

    .line 1077
    .end local v26    # "fastBorderColor":I
    .local v8, "fastBorderColor":I
    :cond_14
    move/from16 v26, v8

    .end local v8    # "fastBorderColor":I
    .restart local v26    # "fastBorderColor":I
    move/from16 v27, v12

    move-object/from16 v21, v14

    goto/16 :goto_c

    .line 1107
    .end local v26    # "fastBorderColor":I
    .restart local v8    # "fastBorderColor":I
    :cond_15
    move/from16 v26, v8

    .end local v8    # "fastBorderColor":I
    .restart local v26    # "fastBorderColor":I
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1109
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 1110
    .local v24, "width":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 1112
    .local v25, "height":I
    if-lez v15, :cond_16

    .line 1113
    int-to-float v8, v9

    .line 1114
    .local v8, "x1":F
    int-to-float v7, v0

    .line 1115
    .local v7, "y1":F
    add-int v1, v9, v15

    int-to-float v6, v1

    .line 1116
    .local v6, "x2":F
    add-int v1, v0, v16

    int-to-float v5, v1

    .line 1117
    .local v5, "y2":F
    add-int v1, v9, v15

    int-to-float v4, v1

    .line 1118
    .local v4, "x3":F
    add-int v1, v0, v25

    sub-int v1, v1, v18

    int-to-float v3, v1

    .line 1119
    .local v3, "y3":F
    int-to-float v2, v9

    .line 1120
    .local v2, "x4":F
    add-int v1, v0, v25

    int-to-float v1, v1

    .line 1122
    .local v1, "y4":F
    move/from16 v27, v12

    move v12, v0

    .end local v0    # "top":I
    .local v12, "top":I
    .local v27, "useColor":I
    move-object/from16 v0, p0

    move/from16 v28, v1

    .end local v1    # "y4":F
    .local v28, "y4":F
    move-object/from16 v1, p1

    move/from16 v29, v2

    .end local v2    # "x4":F
    .local v29, "x4":F
    move/from16 v2, v22

    move/from16 v30, v3

    .end local v3    # "y3":F
    .local v30, "y3":F
    move v3, v8

    move/from16 v31, v4

    .end local v4    # "x3":F
    .local v31, "x3":F
    move v4, v7

    move/from16 v32, v5

    .end local v5    # "y2":F
    .local v32, "y2":F
    move v5, v6

    move/from16 v33, v6

    .end local v6    # "x2":F
    .local v33, "x2":F
    move/from16 v6, v32

    move/from16 v34, v7

    .end local v7    # "y1":F
    .local v34, "y1":F
    move/from16 v7, v31

    move/from16 v35, v8

    .end local v8    # "x1":F
    .local v35, "x1":F
    move/from16 v8, v30

    move v13, v9

    move-object/from16 v21, v14

    const/4 v14, 0x1

    .end local v9    # "left":I
    .end local v14    # "borderWidth":Landroid/graphics/RectF;
    .local v13, "left":I
    .local v21, "borderWidth":Landroid/graphics/RectF;
    move/from16 v9, v29

    move-object/from16 v36, v10

    .end local v10    # "bounds":Landroid/graphics/Rect;
    .local v36, "bounds":Landroid/graphics/Rect;
    move/from16 v10, v28

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_b

    .line 1112
    .end local v13    # "left":I
    .end local v21    # "borderWidth":Landroid/graphics/RectF;
    .end local v27    # "useColor":I
    .end local v28    # "y4":F
    .end local v29    # "x4":F
    .end local v30    # "y3":F
    .end local v31    # "x3":F
    .end local v32    # "y2":F
    .end local v33    # "x2":F
    .end local v34    # "y1":F
    .end local v35    # "x1":F
    .end local v36    # "bounds":Landroid/graphics/Rect;
    .restart local v0    # "top":I
    .restart local v9    # "left":I
    .restart local v10    # "bounds":Landroid/graphics/Rect;
    .local v12, "useColor":I
    .restart local v14    # "borderWidth":Landroid/graphics/RectF;
    :cond_16
    move v13, v9

    move-object/from16 v36, v10

    move/from16 v27, v12

    move-object/from16 v21, v14

    const/4 v14, 0x1

    move v12, v0

    .line 1125
    .end local v0    # "top":I
    .end local v9    # "left":I
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "borderWidth":Landroid/graphics/RectF;
    .local v12, "top":I
    .restart local v13    # "left":I
    .restart local v21    # "borderWidth":Landroid/graphics/RectF;
    .restart local v27    # "useColor":I
    .restart local v36    # "bounds":Landroid/graphics/Rect;
    :goto_b
    if-lez v16, :cond_17

    .line 1126
    int-to-float v10, v13

    .line 1127
    .local v10, "x1":F
    int-to-float v9, v12

    .line 1128
    .local v9, "y1":F
    add-int v0, v13, v15

    int-to-float v8, v0

    .line 1129
    .local v8, "x2":F
    add-int v0, v12, v16

    int-to-float v7, v0

    .line 1130
    .local v7, "y2":F
    add-int v0, v13, v24

    sub-int v0, v0, v17

    int-to-float v6, v0

    .line 1131
    .local v6, "x3":F
    add-int v0, v12, v16

    int-to-float v5, v0

    .line 1132
    .local v5, "y3":F
    add-int v0, v13, v24

    int-to-float v4, v0

    .line 1133
    .local v4, "x4":F
    int-to-float v3, v12

    .line 1135
    .local v3, "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v28, v3

    .end local v3    # "y4":F
    .restart local v28    # "y4":F
    move v3, v10

    move/from16 v29, v4

    .end local v4    # "x4":F
    .restart local v29    # "x4":F
    move v4, v9

    move/from16 v30, v5

    .end local v5    # "y3":F
    .restart local v30    # "y3":F
    move v5, v8

    move/from16 v31, v6

    .end local v6    # "x3":F
    .restart local v31    # "x3":F
    move v6, v7

    move/from16 v32, v7

    .end local v7    # "y2":F
    .restart local v32    # "y2":F
    move/from16 v7, v31

    move/from16 v33, v8

    .end local v8    # "x2":F
    .restart local v33    # "x2":F
    move/from16 v8, v30

    move/from16 v34, v9

    .end local v9    # "y1":F
    .restart local v34    # "y1":F
    move/from16 v9, v29

    move/from16 v35, v10

    .end local v10    # "x1":F
    .restart local v35    # "x1":F
    move/from16 v10, v28

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1138
    .end local v28    # "y4":F
    .end local v29    # "x4":F
    .end local v30    # "y3":F
    .end local v31    # "x3":F
    .end local v32    # "y2":F
    .end local v33    # "x2":F
    .end local v34    # "y1":F
    .end local v35    # "x1":F
    :cond_17
    if-lez v17, :cond_18

    .line 1139
    add-int v9, v13, v24

    int-to-float v10, v9

    .line 1140
    .restart local v10    # "x1":F
    int-to-float v9, v12

    .line 1141
    .restart local v9    # "y1":F
    add-int v0, v13, v24

    int-to-float v8, v0

    .line 1142
    .restart local v8    # "x2":F
    add-int v0, v12, v25

    int-to-float v7, v0

    .line 1143
    .restart local v7    # "y2":F
    add-int v0, v13, v24

    sub-int v0, v0, v17

    int-to-float v6, v0

    .line 1144
    .restart local v6    # "x3":F
    add-int v0, v12, v25

    sub-int v0, v0, v18

    int-to-float v5, v0

    .line 1145
    .restart local v5    # "y3":F
    add-int v0, v13, v24

    sub-int v0, v0, v17

    int-to-float v4, v0

    .line 1146
    .restart local v4    # "x4":F
    add-int v0, v12, v16

    int-to-float v3, v0

    .line 1148
    .restart local v3    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v28, v3

    .end local v3    # "y4":F
    .restart local v28    # "y4":F
    move v3, v10

    move/from16 v29, v4

    .end local v4    # "x4":F
    .restart local v29    # "x4":F
    move v4, v9

    move/from16 v30, v5

    .end local v5    # "y3":F
    .restart local v30    # "y3":F
    move v5, v8

    move/from16 v31, v6

    .end local v6    # "x3":F
    .restart local v31    # "x3":F
    move v6, v7

    move/from16 v32, v7

    .end local v7    # "y2":F
    .restart local v32    # "y2":F
    move/from16 v7, v31

    move/from16 v33, v8

    .end local v8    # "x2":F
    .restart local v33    # "x2":F
    move/from16 v8, v30

    move/from16 v34, v9

    .end local v9    # "y1":F
    .restart local v34    # "y1":F
    move/from16 v9, v29

    move/from16 v35, v10

    .end local v10    # "x1":F
    .restart local v35    # "x1":F
    move/from16 v10, v28

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1151
    .end local v28    # "y4":F
    .end local v29    # "x4":F
    .end local v30    # "y3":F
    .end local v31    # "x3":F
    .end local v32    # "y2":F
    .end local v33    # "x2":F
    .end local v34    # "y1":F
    .end local v35    # "x1":F
    :cond_18
    if-lez v18, :cond_19

    .line 1152
    int-to-float v10, v13

    .line 1153
    .restart local v10    # "x1":F
    add-int v8, v12, v25

    int-to-float v9, v8

    .line 1154
    .restart local v9    # "y1":F
    add-int v0, v13, v24

    int-to-float v8, v0

    .line 1155
    .restart local v8    # "x2":F
    add-int v0, v12, v25

    int-to-float v7, v0

    .line 1156
    .restart local v7    # "y2":F
    add-int v0, v13, v24

    sub-int v0, v0, v17

    int-to-float v6, v0

    .line 1157
    .restart local v6    # "x3":F
    add-int v0, v12, v25

    sub-int v0, v0, v18

    int-to-float v5, v0

    .line 1158
    .restart local v5    # "y3":F
    add-int v0, v13, v15

    int-to-float v4, v0

    .line 1159
    .restart local v4    # "x4":F
    add-int v0, v12, v25

    sub-int v0, v0, v18

    int-to-float v3, v0

    .line 1161
    .restart local v3    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v28, v3

    .end local v3    # "y4":F
    .restart local v28    # "y4":F
    move v3, v10

    move/from16 v29, v4

    .end local v4    # "x4":F
    .restart local v29    # "x4":F
    move v4, v9

    move/from16 v30, v5

    .end local v5    # "y3":F
    .restart local v30    # "y3":F
    move v5, v8

    move/from16 v31, v6

    .end local v6    # "x3":F
    .restart local v31    # "x3":F
    move v6, v7

    move/from16 v32, v7

    .end local v7    # "y2":F
    .restart local v32    # "y2":F
    move/from16 v7, v31

    move/from16 v33, v8

    .end local v8    # "x2":F
    .restart local v33    # "x2":F
    move/from16 v8, v30

    move/from16 v34, v9

    .end local v9    # "y1":F
    .restart local v34    # "y1":F
    move/from16 v9, v29

    move/from16 v35, v10

    .end local v10    # "x1":F
    .restart local v35    # "x1":F
    move/from16 v10, v28

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1165
    .end local v28    # "y4":F
    .end local v29    # "x4":F
    .end local v30    # "y3":F
    .end local v31    # "x3":F
    .end local v32    # "y2":F
    .end local v33    # "x2":F
    .end local v34    # "y1":F
    .end local v35    # "x1":F
    :cond_19
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1168
    .end local v12    # "top":I
    .end local v13    # "left":I
    .end local v19    # "colorTop":I
    .end local v20    # "colorBottom":I
    .end local v22    # "colorLeft":I
    .end local v23    # "colorRight":I
    .end local v24    # "width":I
    .end local v25    # "height":I
    .end local v26    # "fastBorderColor":I
    .end local v36    # "bounds":Landroid/graphics/Rect;
    :goto_c
    return-void
.end method

.method private drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 331
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePath()V

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 334
    iget v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v13

    .line 335
    .local v13, "useColor":I
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 341
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v14

    .line 343
    .local v14, "borderWidth":Landroid/graphics/RectF;
    iget v0, v14, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    cmpl-float v0, v0, v15

    if-gtz v0, :cond_1

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v15

    if-gtz v0, :cond_1

    iget v0, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v15

    if-gtz v0, :cond_1

    iget v0, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_13

    .line 349
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v8

    .line 350
    .local v8, "fullBorderWidth":F
    iget v0, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    iget v0, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    iget v0, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    .line 354
    cmpl-float v0, v8, v15

    if-lez v0, :cond_13

    .line 355
    const/16 v0, 0x8

    invoke-direct {v11, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v0

    .line 356
    .local v0, "borderColor":I
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v2}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 358
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 359
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    iget-object v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 360
    .end local v0    # "borderColor":I
    goto/16 :goto_8

    .line 364
    :cond_2
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 368
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 370
    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v1

    .line 371
    .local v1, "colorLeft":I
    const/4 v2, 0x1

    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v16

    .line 372
    .local v16, "colorTop":I
    const/4 v3, 0x2

    invoke-direct {v11, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    .line 373
    .local v3, "colorRight":I
    const/4 v4, 0x3

    invoke-direct {v11, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v17

    .line 375
    .local v17, "colorBottom":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_f

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_3

    const/4 v0, 0x1

    .line 377
    .local v0, "isRTL":Z
    :cond_3
    const/4 v2, 0x4

    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    .line 378
    .local v4, "colorStart":I
    const/4 v5, 0x5

    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    .line 380
    .local v6, "colorEnd":I
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v7

    iget-object v9, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 381
    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 382
    move v4, v1

    .line 385
    :cond_4
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 386
    move v6, v3

    .line 389
    :cond_5
    if-eqz v0, :cond_6

    move v2, v6

    goto :goto_0

    :cond_6
    move v2, v4

    .line 390
    .local v2, "directionAwareColorLeft":I
    :goto_0
    if-eqz v0, :cond_7

    move v5, v4

    goto :goto_1

    :cond_7
    move v5, v6

    .line 392
    .local v5, "directionAwareColorRight":I
    :goto_1
    move v1, v2

    .line 393
    move v2, v5

    .line 394
    .end local v3    # "colorRight":I
    .end local v5    # "directionAwareColorRight":I
    .local v2, "colorRight":I
    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_6

    .line 395
    .end local v2    # "colorRight":I
    .restart local v3    # "colorRight":I
    :cond_8
    if-eqz v0, :cond_9

    move v7, v6

    goto :goto_2

    :cond_9
    move v7, v4

    .line 396
    .local v7, "directionAwareColorLeft":I
    :goto_2
    if-eqz v0, :cond_a

    move v9, v4

    goto :goto_3

    :cond_a
    move v9, v6

    .line 398
    .local v9, "directionAwareColorRight":I
    :goto_3
    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    .line 399
    .local v2, "isColorStartDefined":Z
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    .line 400
    .local v5, "isColorEndDefined":Z
    if-eqz v0, :cond_b

    move v10, v5

    goto :goto_4

    :cond_b
    move v10, v2

    .line 402
    .local v10, "isDirectionAwareColorLeftDefined":Z
    :goto_4
    if-eqz v0, :cond_c

    move/from16 v18, v2

    goto :goto_5

    :cond_c
    move/from16 v18, v5

    .line 405
    .local v18, "isDirectionAwareColorRightDefined":Z
    :goto_5
    if-eqz v10, :cond_d

    .line 406
    move v1, v7

    .line 409
    :cond_d
    if-eqz v18, :cond_e

    .line 410
    move v3, v9

    move/from16 v18, v1

    move/from16 v19, v3

    goto :goto_6

    .line 409
    :cond_e
    move/from16 v18, v1

    move/from16 v19, v3

    goto :goto_6

    .line 375
    .end local v0    # "isRTL":Z
    .end local v2    # "isColorStartDefined":Z
    .end local v4    # "colorStart":I
    .end local v5    # "isColorEndDefined":Z
    .end local v6    # "colorEnd":I
    .end local v7    # "directionAwareColorLeft":I
    .end local v9    # "directionAwareColorRight":I
    .end local v10    # "isDirectionAwareColorLeftDefined":Z
    .end local v18    # "isDirectionAwareColorRightDefined":Z
    :cond_f
    move/from16 v18, v1

    move/from16 v19, v3

    .line 415
    .end local v1    # "colorLeft":I
    .end local v3    # "colorRight":I
    .local v18, "colorLeft":I
    .local v19, "colorRight":I
    :goto_6
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    .line 416
    .local v7, "left":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 417
    .local v6, "right":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 418
    .local v5, "top":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 420
    .local v2, "bottom":F
    iget v0, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_10

    .line 421
    move v3, v7

    .line 422
    .local v3, "x1":F
    move v4, v5

    .line 423
    .local v4, "y1":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 424
    .local v1, "x2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 425
    .local v0, "y2":F
    iget-object v9, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    .line 426
    .local v10, "x3":F
    iget-object v9, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 427
    .local v9, "y3":F
    move/from16 v20, v9

    .end local v9    # "y3":F
    .local v20, "y3":F
    move v9, v7

    .line 428
    .local v9, "x4":F
    move/from16 v21, v10

    .end local v10    # "x3":F
    .local v21, "x3":F
    move v10, v2

    .line 430
    .local v10, "y4":F
    move/from16 v22, v0

    .end local v0    # "y2":F
    .local v22, "y2":F
    move-object/from16 v0, p0

    move/from16 v23, v1

    .end local v1    # "x2":F
    .local v23, "x2":F
    move-object/from16 v1, p1

    move/from16 v24, v2

    .end local v2    # "bottom":F
    .local v24, "bottom":F
    move/from16 v2, v18

    move/from16 v25, v5

    .end local v5    # "top":F
    .local v25, "top":F
    move/from16 v5, v23

    move/from16 v26, v6

    .end local v6    # "right":F
    .local v26, "right":F
    move/from16 v6, v22

    move/from16 v27, v7

    .end local v7    # "left":F
    .local v27, "left":F
    move/from16 v7, v21

    move/from16 v28, v8

    .end local v8    # "fullBorderWidth":F
    .local v28, "fullBorderWidth":F
    move/from16 v8, v20

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_7

    .line 420
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v9    # "x4":F
    .end local v10    # "y4":F
    .end local v20    # "y3":F
    .end local v21    # "x3":F
    .end local v22    # "y2":F
    .end local v23    # "x2":F
    .end local v24    # "bottom":F
    .end local v25    # "top":F
    .end local v26    # "right":F
    .end local v27    # "left":F
    .end local v28    # "fullBorderWidth":F
    .restart local v2    # "bottom":F
    .restart local v5    # "top":F
    .restart local v6    # "right":F
    .restart local v7    # "left":F
    .restart local v8    # "fullBorderWidth":F
    :cond_10
    move/from16 v24, v2

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    .line 433
    .end local v2    # "bottom":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .end local v7    # "left":F
    .end local v8    # "fullBorderWidth":F
    .restart local v24    # "bottom":F
    .restart local v25    # "top":F
    .restart local v26    # "right":F
    .restart local v27    # "left":F
    .restart local v28    # "fullBorderWidth":F
    :goto_7
    iget v0, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_11

    .line 434
    move/from16 v3, v27

    .line 435
    .restart local v3    # "x1":F
    move/from16 v4, v25

    .line 436
    .restart local v4    # "y1":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    .line 437
    .local v8, "x2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 438
    .local v7, "y2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 439
    .local v6, "x3":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 440
    .local v5, "y3":F
    move/from16 v9, v26

    .line 441
    .restart local v9    # "x4":F
    move/from16 v10, v25

    .line 443
    .restart local v10    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v20, v5

    .end local v5    # "y3":F
    .restart local v20    # "y3":F
    move v5, v8

    move/from16 v21, v6

    .end local v6    # "x3":F
    .restart local v21    # "x3":F
    move v6, v7

    move/from16 v22, v7

    .end local v7    # "y2":F
    .restart local v22    # "y2":F
    move/from16 v7, v21

    move/from16 v23, v8

    .end local v8    # "x2":F
    .restart local v23    # "x2":F
    move/from16 v8, v20

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 446
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v9    # "x4":F
    .end local v10    # "y4":F
    .end local v20    # "y3":F
    .end local v21    # "x3":F
    .end local v22    # "y2":F
    .end local v23    # "x2":F
    :cond_11
    iget v0, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_12

    .line 447
    move/from16 v3, v26

    .line 448
    .restart local v3    # "x1":F
    move/from16 v4, v25

    .line 449
    .restart local v4    # "y1":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    .line 450
    .restart local v8    # "x2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 451
    .restart local v7    # "y2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 452
    .restart local v6    # "x3":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 453
    .restart local v5    # "y3":F
    move/from16 v9, v26

    .line 454
    .restart local v9    # "x4":F
    move/from16 v10, v24

    .line 456
    .restart local v10    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v20, v5

    .end local v5    # "y3":F
    .restart local v20    # "y3":F
    move v5, v8

    move/from16 v21, v6

    .end local v6    # "x3":F
    .restart local v21    # "x3":F
    move v6, v7

    move/from16 v22, v7

    .end local v7    # "y2":F
    .restart local v22    # "y2":F
    move/from16 v7, v21

    move/from16 v23, v8

    .end local v8    # "x2":F
    .restart local v23    # "x2":F
    move/from16 v8, v20

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 459
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v9    # "x4":F
    .end local v10    # "y4":F
    .end local v20    # "y3":F
    .end local v21    # "x3":F
    .end local v22    # "y2":F
    .end local v23    # "x2":F
    :cond_12
    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_13

    .line 460
    move/from16 v3, v27

    .line 461
    .restart local v3    # "x1":F
    move/from16 v4, v24

    .line 462
    .restart local v4    # "y1":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v15, v0, Landroid/graphics/PointF;->x:F

    .line 463
    .local v15, "x2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 464
    .local v8, "y2":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 465
    .local v7, "x3":F
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 466
    .local v6, "y3":F
    move/from16 v9, v26

    .line 467
    .restart local v9    # "x4":F
    move/from16 v10, v24

    .line 469
    .restart local v10    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v5, v15

    move/from16 v20, v6

    .end local v6    # "y3":F
    .restart local v20    # "y3":F
    move v6, v8

    move/from16 v21, v7

    .end local v7    # "x3":F
    .restart local v21    # "x3":F
    move/from16 v22, v8

    .end local v8    # "y2":F
    .restart local v22    # "y2":F
    move/from16 v8, v20

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 474
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v9    # "x4":F
    .end local v10    # "y4":F
    .end local v15    # "x2":F
    .end local v16    # "colorTop":I
    .end local v17    # "colorBottom":I
    .end local v18    # "colorLeft":I
    .end local v19    # "colorRight":I
    .end local v20    # "y3":F
    .end local v21    # "x3":F
    .end local v22    # "y2":F
    .end local v24    # "bottom":F
    .end local v25    # "top":F
    .end local v26    # "right":F
    .end local v27    # "left":F
    .end local v28    # "fullBorderWidth":F
    :cond_13
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    return-void
.end method

.method private static fastBorderCompatibleColorOrZero(IIIIIIII)I
    .locals 4
    .param p0, "borderLeft"    # I
    .param p1, "borderTop"    # I
    .param p2, "borderRight"    # I
    .param p3, "borderBottom"    # I
    .param p4, "colorLeft"    # I
    .param p5, "colorTop"    # I
    .param p6, "colorRight"    # I
    .param p7, "colorBottom"    # I

    .line 990
    const/4 v0, -0x1

    if-lez p0, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-lez p1, :cond_1

    move v2, p5

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    and-int/2addr v1, v2

    if-lez p2, :cond_2

    move v2, p6

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    and-int/2addr v1, v2

    if-lez p3, :cond_3

    move v0, p7

    :cond_3
    and-int/2addr v0, v1

    .line 994
    .local v0, "andSmear":I
    const/4 v1, 0x0

    if-lez p0, :cond_4

    move v2, p4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-lez p1, :cond_5

    move v3, p5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    if-lez p2, :cond_6

    move v3, p6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    or-int/2addr v2, v3

    if-lez p3, :cond_7

    move v3, p7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    or-int/2addr v2, v3

    .line 998
    .local v2, "orSmear":I
    if-ne v0, v2, :cond_8

    move v1, v0

    :cond_8
    return v1
.end method

.method private getBorderColor(I)I
    .locals 3
    .param p1, "position"    # I

    .line 1222
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1223
    .local v0, "rgb":F
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    .line 1225
    .local v1, "alpha":F
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->colorFromAlphaAndRGBComponents(FF)I

    move-result v2

    return v2
.end method

.method private getBorderWidth(I)I
    .locals 2
    .param p1, "position"    # I

    .line 1200
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 1201
    const/4 v0, 0x0

    return v0

    .line 1204
    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    .line 1205
    .local v0, "width":F
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    return v1
.end method

.method private static getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V
    .locals 33
    .param p0, "ellipseBoundsLeft"    # D
    .param p2, "ellipseBoundsTop"    # D
    .param p4, "ellipseBoundsRight"    # D
    .param p6, "ellipseBoundsBottom"    # D
    .param p8, "lineStartX"    # D
    .param p10, "lineStartY"    # D
    .param p12, "lineEndX"    # D
    .param p14, "lineEndY"    # D
    .param p16, "result"    # Landroid/graphics/PointF;

    .line 878
    move-object/from16 v0, p16

    add-double v1, p0, p4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 879
    .local v1, "ellipseCenterX":D
    add-double v5, p2, p6

    div-double/2addr v5, v3

    .line 890
    .local v5, "ellipseCenterY":D
    sub-double v7, p8, v1

    .line 891
    .end local p8    # "lineStartX":D
    .local v7, "lineStartX":D
    sub-double v9, p10, v5

    .line 892
    .end local p10    # "lineStartY":D
    .local v9, "lineStartY":D
    sub-double v11, p12, v1

    .line 893
    .end local p12    # "lineEndX":D
    .local v11, "lineEndX":D
    sub-double v13, p14, v5

    .line 901
    .end local p14    # "lineEndY":D
    .local v13, "lineEndY":D
    sub-double v15, p4, p0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    div-double/2addr v15, v3

    .line 902
    .local v15, "a":D
    sub-double v17, p6, p2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    div-double v17, v17, v3

    .line 903
    .local v17, "b":D
    sub-double v19, v13, v9

    sub-double v21, v11, v7

    div-double v19, v19, v21

    .line 904
    .local v19, "m":D
    mul-double v21, v19, v7

    sub-double v21, v9, v21

    .line 914
    .local v21, "c":D
    mul-double v23, v17, v17

    mul-double v25, v15, v15

    mul-double v25, v25, v19

    mul-double v25, v25, v19

    add-double v23, v23, v25

    .line 915
    .local v23, "A":D
    mul-double v25, v15, v3

    mul-double v25, v25, v15

    mul-double v25, v25, v21

    mul-double v3, v25, v19

    .line 916
    .local v3, "B":D
    mul-double v25, v15, v15

    mul-double v29, v21, v21

    mul-double v31, v17, v17

    sub-double v29, v29, v31

    move-wide/from16 p8, v7

    .end local v7    # "lineStartX":D
    .restart local p8    # "lineStartX":D
    mul-double v7, v25, v29

    .line 923
    .local v7, "C":D
    move-wide/from16 p10, v9

    .end local v9    # "lineStartY":D
    .restart local p10    # "lineStartY":D
    neg-double v9, v7

    div-double v9, v9, v23

    move-wide/from16 p12, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .end local v7    # "C":D
    .local p12, "C":D
    mul-double v25, v23, v7

    move-wide/from16 v27, v11

    .end local v11    # "lineEndX":D
    .local v27, "lineEndX":D
    div-double v11, v3, v25

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 924
    .local v9, "D":D
    neg-double v11, v3

    mul-double v7, v7, v23

    div-double/2addr v11, v7

    sub-double/2addr v11, v9

    .line 925
    .local v11, "x2":D
    mul-double v7, v19, v11

    add-double v7, v7, v21

    .line 932
    .local v7, "y2":D
    move-wide/from16 p14, v3

    .end local v3    # "B":D
    .local p14, "B":D
    add-double v3, v11, v1

    .line 933
    .local v3, "x":D
    move-wide/from16 v25, v1

    .end local v1    # "ellipseCenterX":D
    .local v25, "ellipseCenterX":D
    add-double v1, v7, v5

    .line 935
    .local v1, "y":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v29

    if-nez v29, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v29

    if-nez v29, :cond_0

    .line 936
    move-wide/from16 v29, v5

    .end local v5    # "ellipseCenterY":D
    .local v29, "ellipseCenterY":D
    double-to-float v5, v3

    iput v5, v0, Landroid/graphics/PointF;->x:F

    .line 937
    double-to-float v5, v1

    iput v5, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 935
    .end local v29    # "ellipseCenterY":D
    .restart local v5    # "ellipseCenterY":D
    :cond_0
    move-wide/from16 v29, v5

    .line 939
    .end local v5    # "ellipseCenterY":D
    .restart local v29    # "ellipseCenterY":D
    :goto_0
    return-void
.end method

.method private isBorderColorDefined(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 1216
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1217
    .local v0, "rgb":F
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    .line 1218
    .local v1, "alpha":F
    :cond_1
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private setBorderAlpha(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "alpha"    # F

    .line 237
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 242
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 244
    :cond_1
    return-void
.end method

.method private setBorderRGB(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "rgb"    # F

    .line 226
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 231
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 233
    :cond_1
    return-void
.end method

.method private updatePath()V
    .locals 46

    .line 478
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    if-nez v1, :cond_0

    .line 479
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 484
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 485
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 488
    :cond_1
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_2

    .line 489
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    .line 492
    :cond_2
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    if-nez v2, :cond_3

    .line 493
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    .line 496
    :cond_3
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    if-nez v2, :cond_4

    .line 497
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    .line 500
    :cond_4
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_5

    .line 501
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 504
    :cond_5
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_6

    .line 505
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 508
    :cond_6
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    if-nez v2, :cond_7

    .line 509
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 512
    :cond_7
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    if-nez v2, :cond_8

    .line 513
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 516
    :cond_8
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 517
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 518
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 519
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 521
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 522
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 523
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 524
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v2

    .line 527
    .local v2, "fullBorderWidth":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_9

    .line 528
    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v2, v5

    mul-float v5, v5, v2

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 531
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v4

    .line 533
    .local v4, "borderWidth":Landroid/graphics/RectF;
    iget-object v5, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 534
    iget-object v5, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 535
    iget-object v5, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 536
    iget-object v5, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderRadius()F

    move-result v5

    .line 539
    .local v5, "borderRadius":F
    sget-object v6, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 540
    invoke-virtual {v0, v5, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v6

    .line 541
    .local v6, "topLeftRadius":F
    sget-object v7, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 542
    invoke-virtual {v0, v5, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v7

    .line 543
    .local v7, "topRightRadius":F
    sget-object v8, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 544
    invoke-virtual {v0, v5, v8}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v8

    .line 545
    .local v8, "bottomLeftRadius":F
    sget-object v9, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 546
    invoke-virtual {v0, v5, v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v9

    .line 548
    .local v9, "bottomRightRadius":F
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    const/4 v12, 0x1

    if-lt v10, v11, :cond_1b

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v10

    if-ne v10, v12, :cond_a

    const/4 v10, 0x1

    goto :goto_0

    :cond_a
    const/4 v10, 0x0

    .line 550
    .local v10, "isRTL":Z
    :goto_0
    sget-object v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v11}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v11

    .line 551
    .local v11, "topStartRadius":F
    sget-object v13, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v13}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v13

    .line 552
    .local v13, "topEndRadius":F
    sget-object v14, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v14}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v14

    .line 553
    .local v14, "bottomStartRadius":F
    sget-object v15, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v15}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v15

    .line 555
    .local v15, "bottomEndRadius":F
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v12

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 556
    invoke-static {v11}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 557
    move v11, v6

    .line 560
    :cond_b
    invoke-static {v13}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 561
    move v13, v7

    .line 564
    :cond_c
    invoke-static {v14}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 565
    move v14, v8

    .line 568
    :cond_d
    invoke-static {v15}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 569
    move v15, v9

    .line 572
    :cond_e
    if-eqz v10, :cond_f

    move v1, v13

    goto :goto_1

    :cond_f
    move v1, v11

    .line 573
    .local v1, "directionAwareTopLeftRadius":F
    :goto_1
    if-eqz v10, :cond_10

    move v12, v11

    goto :goto_2

    :cond_10
    move v12, v13

    .line 574
    .local v12, "directionAwareTopRightRadius":F
    :goto_2
    if-eqz v10, :cond_11

    move/from16 v18, v15

    goto :goto_3

    :cond_11
    move/from16 v18, v14

    .line 575
    .local v18, "directionAwareBottomLeftRadius":F
    :goto_3
    if-eqz v10, :cond_12

    move/from16 v19, v14

    goto :goto_4

    :cond_12
    move/from16 v19, v15

    .line 577
    .local v19, "directionAwareBottomRightRadius":F
    :goto_4
    move v6, v1

    .line 578
    move v7, v12

    .line 579
    move/from16 v8, v18

    .line 580
    move/from16 v9, v19

    .line 581
    .end local v1    # "directionAwareTopLeftRadius":F
    .end local v12    # "directionAwareTopRightRadius":F
    .end local v18    # "directionAwareBottomLeftRadius":F
    .end local v19    # "directionAwareBottomRightRadius":F
    goto :goto_9

    .line 582
    :cond_13
    if-eqz v10, :cond_14

    move v1, v13

    goto :goto_5

    :cond_14
    move v1, v11

    .line 583
    .restart local v1    # "directionAwareTopLeftRadius":F
    :goto_5
    if-eqz v10, :cond_15

    move v12, v11

    goto :goto_6

    :cond_15
    move v12, v13

    .line 584
    .restart local v12    # "directionAwareTopRightRadius":F
    :goto_6
    if-eqz v10, :cond_16

    move/from16 v18, v15

    goto :goto_7

    :cond_16
    move/from16 v18, v14

    .line 585
    .restart local v18    # "directionAwareBottomLeftRadius":F
    :goto_7
    if-eqz v10, :cond_17

    move/from16 v19, v14

    goto :goto_8

    :cond_17
    move/from16 v19, v15

    .line 587
    .restart local v19    # "directionAwareBottomRightRadius":F
    :goto_8
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v20

    if-nez v20, :cond_18

    .line 588
    move v6, v1

    .line 591
    :cond_18
    invoke-static {v12}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v20

    if-nez v20, :cond_19

    .line 592
    move v7, v12

    .line 595
    :cond_19
    invoke-static/range {v18 .. v18}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v20

    if-nez v20, :cond_1a

    .line 596
    move/from16 v8, v18

    .line 599
    :cond_1a
    invoke-static/range {v19 .. v19}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v20

    if-nez v20, :cond_1b

    .line 600
    move/from16 v9, v19

    .line 605
    .end local v1    # "directionAwareTopLeftRadius":F
    .end local v10    # "isRTL":Z
    .end local v11    # "topStartRadius":F
    .end local v12    # "directionAwareTopRightRadius":F
    .end local v13    # "topEndRadius":F
    .end local v14    # "bottomStartRadius":F
    .end local v15    # "bottomEndRadius":F
    .end local v18    # "directionAwareBottomLeftRadius":F
    .end local v19    # "directionAwareBottomRightRadius":F
    :cond_1b
    :goto_9
    iget v1, v4, Landroid/graphics/RectF;->left:F

    sub-float v1, v6, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 606
    .local v1, "innerTopLeftRadiusX":F
    iget v10, v4, Landroid/graphics/RectF;->top:F

    sub-float v10, v6, v10

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 607
    .local v10, "innerTopLeftRadiusY":F
    iget v11, v4, Landroid/graphics/RectF;->right:F

    sub-float v11, v7, v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 608
    .local v11, "innerTopRightRadiusX":F
    iget v12, v4, Landroid/graphics/RectF;->top:F

    sub-float v12, v7, v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 609
    .local v12, "innerTopRightRadiusY":F
    iget v13, v4, Landroid/graphics/RectF;->right:F

    sub-float v13, v9, v13

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 610
    .local v13, "innerBottomRightRadiusX":F
    iget v14, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v14, v9, v14

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 611
    .local v14, "innerBottomRightRadiusY":F
    iget v15, v4, Landroid/graphics/RectF;->left:F

    sub-float v15, v8, v15

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 612
    .local v15, "innerBottomLeftRadiusX":F
    move/from16 v18, v2

    .end local v2    # "fullBorderWidth":F
    .local v18, "fullBorderWidth":F
    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 614
    .local v2, "innerBottomLeftRadiusY":F
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    move-object/from16 v19, v4

    .end local v4    # "borderWidth":Landroid/graphics/RectF;
    .local v19, "borderWidth":Landroid/graphics/RectF;
    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move/from16 v20, v5

    .end local v5    # "borderRadius":F
    .local v20, "borderRadius":F
    const/16 v5, 0x8

    move/from16 v21, v8

    .end local v8    # "bottomLeftRadius":F
    .local v21, "bottomLeftRadius":F
    new-array v8, v5, [F

    const/16 v17, 0x0

    aput v1, v8, v17

    const/16 v16, 0x1

    aput v10, v8, v16

    const/16 v22, 0x2

    aput v11, v8, v22

    const/16 v23, 0x3

    aput v12, v8, v23

    const/16 v24, 0x4

    aput v13, v8, v24

    const/16 v25, 0x5

    aput v14, v8, v25

    const/16 v26, 0x6

    aput v15, v8, v26

    const/16 v27, 0x7

    aput v2, v8, v27

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v8, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 628
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    const/16 v5, 0x8

    new-array v8, v5, [F

    const/4 v5, 0x0

    aput v6, v8, v5

    const/4 v5, 0x1

    aput v6, v8, v5

    aput v7, v8, v22

    aput v7, v8, v23

    aput v9, v8, v24

    aput v9, v8, v25

    aput v21, v8, v26

    aput v21, v8, v27

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v8, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 642
    const/4 v3, 0x0

    .line 644
    .local v3, "extraRadiusForOutline":F
    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_1c

    .line 645
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v4

    div-float v3, v4, v5

    goto :goto_a

    .line 644
    :cond_1c
    const/16 v8, 0x8

    .line 648
    :goto_a
    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    move/from16 v28, v2

    .end local v2    # "innerBottomLeftRadiusY":F
    .local v28, "innerBottomLeftRadiusY":F
    new-array v2, v8, [F

    add-float v8, v6, v3

    const/16 v17, 0x0

    aput v8, v2, v17

    add-float v8, v6, v3

    const/16 v16, 0x1

    aput v8, v2, v16

    add-float v8, v7, v3

    aput v8, v2, v22

    add-float v8, v7, v3

    aput v8, v2, v23

    add-float v8, v9, v3

    aput v8, v2, v24

    add-float v8, v9, v3

    aput v8, v2, v25

    add-float v8, v21, v3

    aput v8, v2, v26

    add-float v8, v21, v3

    aput v8, v2, v27

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v2, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 662
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    const/16 v5, 0x8

    new-array v5, v5, [F

    add-float v8, v1, v3

    const/16 v17, 0x0

    aput v8, v5, v17

    add-float v8, v10, v3

    const/16 v16, 0x1

    aput v8, v5, v16

    add-float v8, v11, v3

    aput v8, v5, v22

    add-float v8, v12, v3

    aput v8, v5, v23

    add-float v8, v13, v3

    aput v8, v5, v24

    add-float v8, v14, v3

    aput v8, v5, v25

    add-float v8, v15, v3

    aput v8, v5, v26

    add-float v8, v28, v3

    aput v8, v5, v27

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 763
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_1d

    .line 764
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    .line 768
    :cond_1d
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 769
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 771
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    move-wide/from16 v29, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v2

    move-wide/from16 v31, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v1, v4

    add-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v33, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v10, v4

    add-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v35, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    move-wide/from16 v37, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v2

    move-wide/from16 v39, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    move-wide/from16 v41, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v2

    move-wide/from16 v43, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v2

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 790
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_1e

    .line 791
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    .line 794
    :cond_1e
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 795
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 797
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    move-wide/from16 v29, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v28, v4

    sub-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v31, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v15, v4

    add-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v33, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v2

    move-wide/from16 v35, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    move-wide/from16 v37, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v2

    move-wide/from16 v39, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    move-wide/from16 v41, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v2

    move-wide/from16 v43, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v2

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 816
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_1f

    .line 817
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    .line 820
    :cond_1f
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 821
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 823
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v11, v4

    sub-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v29, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v2

    move-wide/from16 v31, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    move-wide/from16 v33, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v12, v4

    add-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v35, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    move-wide/from16 v37, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v2

    move-wide/from16 v39, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    move-wide/from16 v41, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v2

    move-wide/from16 v43, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v2

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 842
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_20

    .line 843
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    .line 846
    :cond_20
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 847
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 849
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v13, v4

    sub-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v29, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v14, v4

    sub-float/2addr v2, v5

    float-to-double v4, v2

    move-wide/from16 v31, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    move-wide/from16 v33, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v2

    move-wide/from16 v35, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    move-wide/from16 v37, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v2

    move-wide/from16 v39, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    move-wide/from16 v41, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v2

    move-wide/from16 v43, v4

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v2

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 866
    return-void
.end method

.method private updatePathEffect()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->getPathEffect(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathEffectForBorderStyle:Landroid/graphics/PathEffect;

    .line 963
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathEffectForBorderStyle:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 964
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 130
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePathEffect()V

    .line 131
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V

    .line 136
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    return v0
.end method

.method public getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F
    .locals 1
    .param p1, "location"    # Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 283
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v0

    return v0
.end method

.method public getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F
    .locals 2
    .param p1, "defaultValue"    # F
    .param p2, "location"    # Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 288
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-nez v0, :cond_0

    .line 289
    return p1

    .line 292
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 294
    .local v0, "radius":F
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    return p1

    .line 298
    :cond_1
    return v0
.end method

.method public getBorderWidthOrDefaultTo(FI)F
    .locals 2
    .param p1, "defaultValue"    # F
    .param p2, "spacingType"    # I

    .line 942
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 943
    return p1

    .line 946
    :cond_0
    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    .line 948
    .local v0, "width":F
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    return p1

    .line 952
    :cond_1
    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 327
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    return v0
.end method

.method public getDirectionAwareBorderInsets()Landroid/graphics/RectF;
    .locals 11

    .line 1229
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v0

    .line 1230
    .local v0, "borderWidth":F
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v2

    .line 1231
    .local v2, "borderTopWidth":F
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v3

    .line 1232
    .local v3, "borderBottomWidth":F
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v5

    .line 1233
    .local v5, "borderLeftWidth":F
    const/4 v6, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v6

    .line 1235
    .local v6, "borderRightWidth":F
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_9

    iget-object v7, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v7, :cond_9

    .line 1236
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1237
    .local v1, "isRTL":Z
    :goto_0
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v4

    .line 1238
    .local v4, "borderStartWidth":F
    iget-object v7, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v7

    .line 1240
    .local v7, "borderEndWidth":F
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1241
    invoke-static {v4}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1242
    move v4, v5

    .line 1245
    :cond_1
    invoke-static {v7}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1246
    move v7, v6

    .line 1249
    :cond_2
    if-eqz v1, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v4

    .line 1250
    .local v8, "directionAwareBorderLeftWidth":F
    :goto_1
    if-eqz v1, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    move v9, v7

    .line 1252
    .local v9, "directionAwareBorderRightWidth":F
    :goto_2
    move v5, v8

    .line 1253
    move v6, v9

    .line 1254
    .end local v8    # "directionAwareBorderLeftWidth":F
    .end local v9    # "directionAwareBorderRightWidth":F
    goto :goto_5

    .line 1255
    :cond_5
    if-eqz v1, :cond_6

    move v8, v7

    goto :goto_3

    :cond_6
    move v8, v4

    .line 1256
    .restart local v8    # "directionAwareBorderLeftWidth":F
    :goto_3
    if-eqz v1, :cond_7

    move v9, v4

    goto :goto_4

    :cond_7
    move v9, v7

    .line 1258
    .restart local v9    # "directionAwareBorderRightWidth":F
    :goto_4
    invoke-static {v8}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1259
    move v5, v8

    .line 1262
    :cond_8
    invoke-static {v9}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1263
    move v6, v9

    .line 1268
    .end local v1    # "isRTL":Z
    .end local v4    # "borderStartWidth":F
    .end local v7    # "borderEndWidth":F
    .end local v8    # "directionAwareBorderLeftWidth":F
    .end local v9    # "directionAwareBorderRightWidth":F
    :cond_9
    :goto_5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getFullBorderRadius()F
    .locals 1

    .line 279
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    :goto_0
    return v0
.end method

.method public getFullBorderWidth()F
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 969
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 968
    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 180
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/views/view/ColorUtil;->getOpacityFromColor(I)I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 187
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 188
    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-eqz v0, :cond_3

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePath()V

    .line 193
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 197
    :goto_0
    return-void
.end method

.method public getResolvedLayoutDirection()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    return v0
.end method

.method public hasRoundedBorders()Z
    .locals 8

    .line 139
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 140
    return v2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 144
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v0, v5

    .line 145
    .local v6, "borderRadii":F
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_1

    cmpl-float v7, v6, v1

    if-lez v7, :cond_1

    .line 146
    return v2

    .line 144
    .end local v6    # "borderRadii":F
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_2
    return v3
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 158
    return-void
.end method

.method public onResolvedLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 162
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 163
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    .line 164
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 166
    :cond_0
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "rgb"    # F
    .param p3, "alpha"    # F

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderRGB(IF)V

    .line 221
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderAlpha(IF)V

    .line 222
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->valueOf(Ljava/lang/String;)Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    move-result-object v0

    :goto_0
    nop

    .line 250
    .local v0, "borderStyle":Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    if-eq v1, v0, :cond_1

    .line 251
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 253
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 255
    :cond_1
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 200
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/Spacing;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 205
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 217
    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 302
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    .line 303
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 304
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 176
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 258
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 261
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 263
    :cond_0
    return-void
.end method

.method public setRadius(FI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "position"    # I

    .line 266
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-nez v0, :cond_0

    .line 267
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    .line 268
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    aget v0, v0, p2

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    aput p1, v0, p2

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 274
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 276
    :cond_1
    return-void
.end method

.method public setResolvedLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 313
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    .line 315
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->onResolvedLayoutDirectionChanged(I)Z

    move-result v0

    return v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
