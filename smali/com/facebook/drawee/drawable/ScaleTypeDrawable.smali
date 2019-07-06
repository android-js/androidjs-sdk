.class public Lcom/facebook/drawee/drawable/ScaleTypeDrawable;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "ScaleTypeDrawable.java"


# instance fields
.field mDrawMatrix:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mFocusPoint:Landroid/graphics/PointF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mScaleTypeState:Ljava/lang/Object;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUnderlyingHeight:I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mUnderlyingWidth:I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scaleType"    # Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 52
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mUnderlyingWidth:I

    .line 38
    iput v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mUnderlyingHeight:I

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mTempMatrix:Landroid/graphics/Matrix;

    .line 53
    iput-object p2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 54
    return-void
.end method

.method private configureBoundsIfUnderlyingChanged()V
    .locals 5

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "scaleTypeChanged":Z
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    instance-of v2, v1, Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 139
    check-cast v1, Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;

    invoke-interface {v1}, Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "state":Ljava/lang/Object;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleTypeState:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 141
    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleTypeState:Ljava/lang/Object;

    .line 143
    .end local v1    # "state":Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mUnderlyingWidth:I

    .line 144
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mUnderlyingHeight:I

    .line 145
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    move v1, v3

    .line 146
    .local v1, "underlyingChanged":Z
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBounds()V

    .line 149
    :cond_6
    return-void
.end method


# virtual methods
.method configureBounds()V
    .locals 13
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, "underlyingDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 158
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 159
    .local v9, "viewWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 160
    .local v10, "viewHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mUnderlyingWidth:I

    move v11, v1

    .line 161
    .local v11, "underlyingWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mUnderlyingHeight:I

    move v12, v1

    .line 164
    .local v12, "underlyingHeight":I
    const/4 v1, 0x0

    if-lez v11, :cond_5

    if-gtz v12, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    if-ne v11, v9, :cond_1

    if-ne v12, v10, :cond_1

    .line 172
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 173
    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 174
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v3, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v2, v3, :cond_2

    .line 180
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 181
    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 182
    return-void

    .line 186
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move v6, v3

    goto :goto_0

    :cond_3
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move v7, v3

    goto :goto_1

    :cond_4
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_1
    move-object v3, v8

    move v4, v11

    move v5, v12

    invoke-interface/range {v1 .. v7}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 194
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mTempMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 195
    return-void

    .line 165
    :cond_5
    :goto_2
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 166
    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 167
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 118
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBoundsIfUnderlyingChanged()V

    .line 119
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 121
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 122
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 123
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 125
    .end local v0    # "saveCount":I
    goto :goto_0

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    :goto_0
    return-void
.end method

.method public getFocusPoint()Landroid/graphics/PointF;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 203
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->getParentTransform(Landroid/graphics/Matrix;)V

    .line 206
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBoundsIfUnderlyingChanged()V

    .line 207
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 210
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 133
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBounds()V

    .line 134
    return-void
.end method

.method public setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "newDelegate"    # Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, "previousDelegate":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBounds()V

    .line 61
    return-object v0
.end method

.method public setFocusPoint(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "focusPoint"    # Landroid/graphics/PointF;

    .line 103
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mFocusPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 112
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBounds()V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->invalidateSelf()V

    .line 114
    return-void
.end method

.method public setScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 77
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->mScaleTypeState:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->configureBounds()V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method
