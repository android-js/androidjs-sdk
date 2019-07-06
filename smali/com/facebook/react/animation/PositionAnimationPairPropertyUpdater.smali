.class public Lcom/facebook/react/animation/PositionAnimationPairPropertyUpdater;
.super Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;
.source "PositionAnimationPairPropertyUpdater.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "toFirst"    # F
    .param p2, "toSecond"    # F

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;-><init>(FF)V

    .line 19
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "fromFirst"    # F
    .param p2, "fromSecond"    # F
    .param p3, "toFirst"    # F
    .param p4, "toSecond"    # F

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;-><init>(FFFF)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getProperty(Landroid/view/View;[F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "returnValues"    # [F

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 33
    return-void
.end method

.method protected setProperty(Landroid/view/View;[F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "propertyValues"    # [F

    .line 37
    const/4 v0, 0x0

    aget v0, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 38
    const/4 v0, 0x1

    aget v0, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 39
    return-void
.end method
