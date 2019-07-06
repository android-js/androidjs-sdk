.class public abstract Lcom/facebook/react/uimanager/ViewGroupManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ViewGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field private static mZIndexHash:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ViewGroupManager;->mZIndexHash:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method

.method public static getViewZIndex(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    sget-object v0, Lcom/facebook/react/uimanager/ViewGroupManager;->mZIndexHash:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static setViewZIndex(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "zIndex"    # I

    .line 56
    sget-object v0, Lcom/facebook/react/uimanager/ViewGroupManager;->mZIndexHash:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 40
    return-void
.end method

.method public addViews(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 26
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    new-instance v0, Lcom/facebook/react/uimanager/LayoutShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 19
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount(Landroid/view/ViewGroup;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/LayoutShadowNode;",
            ">;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    const-class v0, Lcom/facebook/react/uimanager/LayoutShadowNode;

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .line 101
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 85
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 79
    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "parent":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 73
    return-void
.end method

.method public shouldPromoteGrandchildren()Z
    .locals 1

    .line 111
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 19
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0
    .param p2, "extraData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<TT;>;"
    .local p1, "root":Landroid/view/ViewGroup;, "TT;"
    return-void
.end method
