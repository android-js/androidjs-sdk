.class public Lcom/facebook/drawee/drawable/MatrixDrawable;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "MatrixDrawable.java"


# instance fields
.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mUnderlyingHeight:I

.field private mUnderlyingWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 39
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mUnderlyingWidth:I

    .line 31
    iput v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mUnderlyingHeight:I

    .line 40
    iput-object p2, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    return-void
.end method

.method private configureBounds()V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "underlyingDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 103
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mUnderlyingWidth:I

    .line 104
    .local v2, "underlyingWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mUnderlyingHeight:I

    .line 109
    .local v3, "underlyingHeight":I
    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object v4, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 116
    :goto_1
    return-void
.end method

.method private configureBoundsIfUnderlyingChanged()V
    .locals 2

    .line 91
    iget v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mUnderlyingWidth:I

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mUnderlyingHeight:I

    .line 92
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->configureBounds()V

    .line 95
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 71
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->configureBoundsIfUnderlyingChanged()V

    .line 72
    iget-object v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 74
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 75
    iget-object v1, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 76
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 78
    .end local v0    # "saveCount":I
    goto :goto_0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    :goto_0
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 124
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getTransform(Landroid/graphics/Matrix;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 128
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 86
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->configureBounds()V

    .line 88
    return-void
.end method

.method public setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "newDelegate"    # Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    .local v0, "previousDelegate":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->configureBounds()V

    .line 48
    return-object v0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 64
    iput-object p1, p0, Lcom/facebook/drawee/drawable/MatrixDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 65
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->configureBounds()V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/MatrixDrawable;->invalidateSelf()V

    .line 67
    return-void
.end method
