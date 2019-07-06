.class public final Lcom/facebook/react/fabric/mounting/ViewPool;
.super Ljava/lang/Object;
.source "ViewPool.java"


# static fields
.field private static final POOL_SIZE:I = 0x200


# instance fields
.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

.field private final mViewPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/common/ClearableSynchronizedPool<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1
    .param p1, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 25
    return-void
.end method

.method private getViewPoolForComponent(Ljava/lang/String;)Lcom/facebook/react/common/ClearableSynchronizedPool;
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/react/common/ClearableSynchronizedPool<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/common/ClearableSynchronizedPool;

    .line 57
    .local v0, "viewPool":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 58
    new-instance v1, Lcom/facebook/react/common/ClearableSynchronizedPool;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lcom/facebook/react/common/ClearableSynchronizedPool;-><init>(I)V

    move-object v0, v1

    .line 59
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-object v0
.end method


# virtual methods
.method createView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/ViewPool;->getViewPoolForComponent(Ljava/lang/String;)Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    .line 30
    .local v0, "viewPool":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 32
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/facebook/react/uimanager/ViewManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/facebook/react/common/ClearableSynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method getOrCreateView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/ViewPool;->getViewPoolForComponent(Ljava/lang/String;)Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    .line 39
    .local v0, "viewPool":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<Landroid/view/View;>;"
    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 40
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/fabric/mounting/ViewPool;->createView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 42
    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 44
    :cond_0
    return-object v1
.end method

.method returnToPool(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/common/ClearableSynchronizedPool;

    .line 50
    .local v0, "viewPool":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p2}, Lcom/facebook/react/common/ClearableSynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method
