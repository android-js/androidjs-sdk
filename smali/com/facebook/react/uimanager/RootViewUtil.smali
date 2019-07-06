.class public Lcom/facebook/react/uimanager/RootViewUtil;
.super Ljava/lang/Object;
.source "RootViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;
    .locals 3
    .param p0, "reactView"    # Landroid/view/View;

    .line 21
    move-object v0, p0

    .line 23
    .local v0, "current":Landroid/view/View;
    :goto_0
    instance-of v1, v0, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_0

    .line 24
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/RootView;

    return-object v1

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 27
    .local v1, "next":Landroid/view/ViewParent;
    if-nez v1, :cond_1

    .line 28
    const/4 v2, 0x0

    return-object v2

    .line 30
    :cond_1
    instance-of v2, v1, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 31
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 32
    .end local v1    # "next":Landroid/view/ViewParent;
    goto :goto_0
.end method
