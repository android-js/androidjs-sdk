.class Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;
.super Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
.source "LayoutUpdateAnimation.java"


# static fields
.field private static final USE_TRANSLATE_ANIMATION:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method createAnimationImpl(Landroid/view/View;IIII)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float v1, p3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    .local v0, "animateLocation":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v1, p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, p5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v1, v2

    .line 33
    .local v1, "animateSize":Z
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 34
    const/4 v2, 0x0

    return-object v2

    .line 35
    :cond_4
    nop

    .line 42
    new-instance v2, Lcom/facebook/react/uimanager/layoutanimation/PositionAndSizeAnimation;

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/uimanager/layoutanimation/PositionAndSizeAnimation;-><init>(Landroid/view/View;IIII)V

    return-object v2
.end method

.method isValid()Z
    .locals 1

    .line 26
    iget v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;->mDurationMs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
