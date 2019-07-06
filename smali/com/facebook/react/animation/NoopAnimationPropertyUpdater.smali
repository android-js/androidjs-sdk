.class public Lcom/facebook/react/animation/NoopAnimationPropertyUpdater;
.super Ljava/lang/Object;
.source "NoopAnimationPropertyUpdater.java"

# interfaces
.implements Lcom/facebook/react/animation/AnimationPropertyUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 27
    return-void
.end method

.method public onUpdate(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 23
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 19
    return-void
.end method
