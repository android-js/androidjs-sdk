.class Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;
.super Landroid/support/constraint/motion/MotionInterpolator;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field currentP:F

.field initalV:F

.field maxA:F

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 0

    .line 1675
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Landroid/support/constraint/motion/MotionInterpolator;-><init>()V

    const/4 p1, 0x0

    .line 1676
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1677
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    return-void
.end method


# virtual methods
.method public config(FFF)V
    .locals 0

    .line 1681
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1682
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    .line 1683
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    .line 1688
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 1689
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float v3, v0, v2

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    div-float p1, v0, v2

    .line 1692
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    iput v0, v3, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1693
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    mul-float v0, v0, p1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 1694
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    :goto_0
    add-float/2addr v0, p1

    return v0

    :cond_1
    neg-float v2, v0

    .line 1697
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    neg-float p1, v0

    div-float/2addr p1, v3

    .line 1700
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    mul-float v3, v3, p1

    add-float/2addr v0, v3

    iput v0, v2, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1701
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    mul-float v0, v0, p1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 1702
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    goto :goto_0
.end method

.method public getVelocity()F
    .locals 1

    .line 1708
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    return v0
.end method
