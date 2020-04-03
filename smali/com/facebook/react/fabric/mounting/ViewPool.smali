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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    return-void
.end method

.method private getViewPoolForComponent(Ljava/lang/String;)Lcom/facebook/react/common/ClearableSynchronizedPool;
    .locals 2
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

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/react/common/ClearableSynchronizedPool;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/facebook/react/common/ClearableSynchronizedPool;-><init>(I)V

    .line 59
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method createView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/ViewPool;->getViewPoolForComponent(Ljava/lang/String;)Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/uimanager/ViewManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/facebook/react/common/ClearableSynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method getOrCreateView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/ViewPool;->getViewPoolForComponent(Ljava/lang/String;)Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/fabric/mounting/ViewPool;->createView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 42
    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    :cond_0
    return-object v1
.end method

.method returnToPool(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/ViewPool;->mViewPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/common/ClearableSynchronizedPool;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1, p2}, Lcom/facebook/react/common/ClearableSynchronizedPool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
