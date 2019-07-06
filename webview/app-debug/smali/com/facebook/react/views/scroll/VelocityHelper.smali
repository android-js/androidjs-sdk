.class public Lcom/facebook/react/views/scroll/VelocityHelper;
.super Ljava/lang/Object;
.source "VelocityHelper.java"


# instance fields
.field private mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateVelocity(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 32
    .local v0, "action":I
    iget-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 33
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 37
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 42
    iget-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iput v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mXVelocity:F

    .line 43
    iget-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iput v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mYVelocity:F

    .line 45
    iget-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public getXVelocity()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/facebook/react/views/scroll/VelocityHelper;->mYVelocity:F

    return v0
.end method
