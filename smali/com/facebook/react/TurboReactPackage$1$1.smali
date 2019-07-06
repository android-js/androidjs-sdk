.class Lcom/facebook/react/TurboReactPackage$1$1;
.super Ljava/lang/Object;
.source "TurboReactPackage.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/TurboReactPackage$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/facebook/react/bridge/ModuleHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/TurboReactPackage$1;


# direct methods
.method constructor <init>(Lcom/facebook/react/TurboReactPackage$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/TurboReactPackage$1;

    .line 64
    iput-object p1, p0, Lcom/facebook/react/TurboReactPackage$1$1;->this$1:Lcom/facebook/react/TurboReactPackage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/facebook/react/TurboReactPackage$1$1;->this$1:Lcom/facebook/react/TurboReactPackage$1;

    iget-object v0, v0, Lcom/facebook/react/TurboReactPackage$1;->val$entrySetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/facebook/react/bridge/ModuleHolder;
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/facebook/react/TurboReactPackage$1$1;->this$1:Lcom/facebook/react/TurboReactPackage$1;

    iget-object v0, v0, Lcom/facebook/react/TurboReactPackage$1;->val$entrySetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 75
    .local v2, "reactModuleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    new-instance v3, Lcom/facebook/react/bridge/ModuleHolder;

    new-instance v4, Lcom/facebook/react/TurboReactPackage$ModuleHolderProvider;

    iget-object v5, p0, Lcom/facebook/react/TurboReactPackage$1$1;->this$1:Lcom/facebook/react/TurboReactPackage$1;

    iget-object v5, v5, Lcom/facebook/react/TurboReactPackage$1;->this$0:Lcom/facebook/react/TurboReactPackage;

    iget-object v6, p0, Lcom/facebook/react/TurboReactPackage$1$1;->this$1:Lcom/facebook/react/TurboReactPackage$1;

    iget-object v6, v6, Lcom/facebook/react/TurboReactPackage$1;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v4, v5, v1, v6}, Lcom/facebook/react/TurboReactPackage$ModuleHolderProvider;-><init>(Lcom/facebook/react/TurboReactPackage;Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v3, v2, v4}, Lcom/facebook/react/bridge/ModuleHolder;-><init>(Lcom/facebook/react/module/model/ReactModuleInfo;Ljavax/inject/Provider;)V

    return-object v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/facebook/react/TurboReactPackage$1$1;->next()Lcom/facebook/react/bridge/ModuleHolder;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove native modules from the list"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
