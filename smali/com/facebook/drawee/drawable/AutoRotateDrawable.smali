.class public Lcom/facebook/drawee/drawable/AutoRotateDrawable;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "AutoRotateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/facebook/drawee/drawable/CloneableDrawable;


# static fields
.field private static final DEGREES_IN_FULL_ROTATION:I = 0x168

.field private static final FRAME_INTERVAL_MS:I = 0x14


# instance fields
.field private mClockwise:Z

.field private mInterval:I

.field private mIsScheduled:Z

.field mRotationAngle:F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "interval"    # I

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IZ)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "interval"    # I
    .param p3, "clockwise"    # Z

    .line 55
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 56
    iput p2, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mInterval:I

    .line 57
    iput-boolean p3, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    .line 58
    return-void
.end method

.method private getIncrement()I
    .locals 2

    .line 128
    iget v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mInterval:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private scheduleNextFrame()V
    .locals 4

    .line 121
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic cloneDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->cloneDrawable()Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public cloneDrawable()Lcom/facebook/drawee/drawable/AutoRotateDrawable;
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/drawee/drawable/DrawableUtils;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, "delegateCopy":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    iget v2, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mInterval:I

    iget-boolean v3, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 82
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 84
    .local v2, "width":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 86
    .local v3, "height":I
    iget v4, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 87
    .local v4, "angle":F
    iget-boolean v5, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    if-nez v5, :cond_0

    .line 88
    const/high16 v5, 0x43b40000    # 360.0f

    iget v6, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    sub-float v4, v5, v6

    .line 90
    :cond_0
    iget v5, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->scheduleNextFrame()V

    .line 95
    return-void
.end method

.method public reset()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 66
    invoke-virtual {p0, p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->invalidateSelf()V

    .line 68
    return-void
.end method

.method public run()V
    .locals 2

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 100
    iget v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    invoke-direct {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->getIncrement()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 101
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->invalidateSelf()V

    .line 102
    return-void
.end method

.method public setClockwise(Z)V
    .locals 0
    .param p1, "clockwise"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    .line 76
    return-void
.end method
