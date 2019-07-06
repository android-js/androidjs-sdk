.class public final Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;
.super Ljava/lang/Object;
.source "ContextBasedViewPool.java"


# instance fields
.field private final mContextViewPoolHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "Lcom/facebook/react/fabric/mounting/ViewPool;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1
    .param p1, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->mContextViewPoolHashMap:Ljava/util/WeakHashMap;

    .line 23
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 24
    return-void
.end method

.method private getViewPool(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/fabric/mounting/ViewPool;
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->mContextViewPoolHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/ViewPool;

    .line 47
    .local v0, "pool":Lcom/facebook/react/fabric/mounting/ViewPool;
    if-nez v0, :cond_0

    .line 48
    new-instance v1, Lcom/facebook/react/fabric/mounting/ViewPool;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v1, v2}, Lcom/facebook/react/fabric/mounting/ViewPool;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    move-object v0, v1

    .line 49
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->mContextViewPoolHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->getViewPool(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/fabric/mounting/ViewPool;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/facebook/react/fabric/mounting/ViewPool;->createView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 30
    return-void
.end method

.method getOrCreateView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 35
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->getViewPool(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/fabric/mounting/ViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/ViewPool;->getOrCreateView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method returnToPool(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 40
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->getViewPool(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/fabric/mounting/ViewPool;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/mounting/ViewPool;->returnToPool(Ljava/lang/String;Landroid/view/View;)V

    .line 42
    return-void
.end method
