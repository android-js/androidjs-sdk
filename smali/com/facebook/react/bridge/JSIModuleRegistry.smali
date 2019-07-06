.class public Lcom/facebook/react/bridge/JSIModuleRegistry;
.super Ljava/lang/Object;
.source "JSIModuleRegistry.java"


# instance fields
.field private final mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/facebook/react/bridge/JSIModuleHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/JSIModuleRegistry;->mModules:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public getModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JSIModule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/JSIModule;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 22
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/JSIModuleRegistry;->mModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JSIModuleHolder;

    .line 23
    .local v0, "jsiModuleHolder":Lcom/facebook/react/bridge/JSIModuleHolder;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JSIModuleHolder;->getJSIModule()Lcom/facebook/react/bridge/JSIModule;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/JSIModule;

    return-object v1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find JSIModule for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyJSInstanceDestroy()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/facebook/react/bridge/JSIModuleRegistry;->mModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/JSIModuleHolder;

    .line 37
    .local v1, "moduleHolder":Lcom/facebook/react/bridge/JSIModuleHolder;
    invoke-virtual {v1}, Lcom/facebook/react/bridge/JSIModuleHolder;->notifyJSInstanceDestroy()V

    .line 38
    .end local v1    # "moduleHolder":Lcom/facebook/react/bridge/JSIModuleHolder;
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public registerModules(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/JSIModuleSpec;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "jsiModules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/JSIModuleSpec;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/JSIModuleSpec;

    .line 31
    .local v1, "spec":Lcom/facebook/react/bridge/JSIModuleSpec;
    iget-object v2, p0, Lcom/facebook/react/bridge/JSIModuleRegistry;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Lcom/facebook/react/bridge/JSIModuleSpec;->getJSIModuleClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/facebook/react/bridge/JSIModuleHolder;

    invoke-direct {v4, v1}, Lcom/facebook/react/bridge/JSIModuleHolder;-><init>(Lcom/facebook/react/bridge/JSIModuleSpec;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .end local v1    # "spec":Lcom/facebook/react/bridge/JSIModuleSpec;
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
