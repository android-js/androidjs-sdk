.class public final Lcom/facebook/react/uimanager/ViewManagerRegistry;
.super Ljava/lang/Object;
.source "ViewManagerRegistry.java"


# instance fields
.field private final mViewManagerResolver:Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mViewManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)V
    .locals 1
    .param p1, "viewManagerResolver"    # Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "viewManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 31
    .local v0, "viewManagerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/ViewManager;

    .line 32
    .local v2, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v2    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    goto :goto_0

    .line 35
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "viewManagerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;

    .line 43
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 47
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;->getViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0

    .line 57
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ViewManager defined for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
