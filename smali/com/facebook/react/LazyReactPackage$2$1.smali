.class Lcom/facebook/react/LazyReactPackage$2$1;
.super Ljava/lang/Object;
.source "LazyReactPackage.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/LazyReactPackage$2;->iterator()Ljava/util/Iterator;
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
.field position:I

.field final synthetic this$1:Lcom/facebook/react/LazyReactPackage$2;


# direct methods
.method constructor <init>(Lcom/facebook/react/LazyReactPackage$2;)V
    .locals 1
    .param p1, "this$1"    # Lcom/facebook/react/LazyReactPackage$2;

    .line 89
    iput-object p1, p0, Lcom/facebook/react/LazyReactPackage$2$1;->this$1:Lcom/facebook/react/LazyReactPackage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/LazyReactPackage$2$1;->position:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/facebook/react/LazyReactPackage$2$1;->position:I

    iget-object v1, p0, Lcom/facebook/react/LazyReactPackage$2$1;->this$1:Lcom/facebook/react/LazyReactPackage$2;

    iget-object v1, v1, Lcom/facebook/react/LazyReactPackage$2;->val$nativeModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/facebook/react/bridge/ModuleHolder;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/facebook/react/LazyReactPackage$2$1;->this$1:Lcom/facebook/react/LazyReactPackage$2;

    iget-object v0, v0, Lcom/facebook/react/LazyReactPackage$2;->val$nativeModules:Ljava/util/List;

    iget v1, p0, Lcom/facebook/react/LazyReactPackage$2$1;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/react/LazyReactPackage$2$1;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ModuleSpec;

    .line 95
    .local v0, "moduleSpec":Lcom/facebook/react/bridge/ModuleSpec;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/react/LazyReactPackage$2$1;->this$1:Lcom/facebook/react/LazyReactPackage$2;

    iget-object v2, v2, Lcom/facebook/react/LazyReactPackage$2;->val$reactModuleInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 98
    .local v2, "reactModuleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    if-nez v2, :cond_0

    .line 100
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/NativeModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v3, "module":Lcom/facebook/react/bridge/NativeModule;
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 105
    nop

    .line 106
    new-instance v4, Lcom/facebook/react/bridge/ModuleHolder;

    invoke-direct {v4, v3}, Lcom/facebook/react/bridge/ModuleHolder;-><init>(Lcom/facebook/react/bridge/NativeModule;)V

    move-object v3, v4

    .line 107
    .local v3, "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    goto :goto_0

    .line 104
    .end local v3    # "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 105
    throw v3

    .line 108
    :cond_0
    new-instance v3, Lcom/facebook/react/bridge/ModuleHolder;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/facebook/react/bridge/ModuleHolder;-><init>(Lcom/facebook/react/module/model/ReactModuleInfo;Ljavax/inject/Provider;)V

    .line 110
    .restart local v3    # "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    :goto_0
    return-object v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/react/LazyReactPackage$2$1;->next()Lcom/facebook/react/bridge/ModuleHolder;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove native modules from the list"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
