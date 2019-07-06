.class public abstract Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;
.super Ljava/lang/Object;
.source "AbstractFloatPairPropertyUpdater.java"

# interfaces
.implements Lcom/facebook/react/animation/AnimationPropertyUpdater;


# instance fields
.field private mFromSource:Z

.field private final mFromValues:[F

.field private final mToValues:[F

.field private final mUpdateValues:[F


# direct methods
.method protected constructor <init>(FF)V
    .locals 2
    .param p1, "toFirst"    # F
    .param p2, "toSecond"    # F

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromValues:[F

    .line 20
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mToValues:[F

    .line 21
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mUpdateValues:[F

    .line 25
    iget-object v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mToValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 26
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 27
    iput-boolean v1, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromSource:Z

    .line 28
    return-void
.end method

.method protected constructor <init>(FFFF)V
    .locals 3
    .param p1, "fromFirst"    # F
    .param p2, "fromSecond"    # F
    .param p3, "toFirst"    # F
    .param p4, "toSecond"    # F

    .line 35
    invoke-direct {p0, p3, p4}, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;-><init>(FF)V

    .line 36
    iget-object v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 37
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 38
    iput-boolean v1, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromSource:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract getProperty(Landroid/view/View;[F)V
.end method

.method public onFinish(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mToValues:[F

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->setProperty(Landroid/view/View;[F)V

    .line 61
    return-void
.end method

.method public onUpdate(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .line 53
    iget-object v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mUpdateValues:[F

    iget-object v1, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mToValues:[F

    aget v5, v4, v2

    aget v6, v1, v2

    sub-float/2addr v5, v6

    mul-float v5, v5, p2

    add-float/2addr v3, v5

    aput v3, v0, v2

    .line 54
    const/4 v2, 0x1

    aget v3, v1, v2

    aget v4, v4, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->setProperty(Landroid/view/View;[F)V

    .line 56
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 46
    iget-boolean v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromSource:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->mFromValues:[F

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/animation/AbstractFloatPairPropertyUpdater;->getProperty(Landroid/view/View;[F)V

    .line 49
    :cond_0
    return-void
.end method

.method protected abstract setProperty(Landroid/view/View;[F)V
.end method
