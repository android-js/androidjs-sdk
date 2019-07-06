.class Lcom/facebook/react/animated/NativeAnimatedModule$3;
.super Ljava/lang/Object;
.source "NativeAnimatedModule.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/animated/NativeAnimatedModule;->willDispatchViewUpdates(Lcom/facebook/react/uimanager/UIManagerModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

.field final synthetic val$operations:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/animated/NativeAnimatedModule;

    .line 145
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    iput-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->val$operations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 3
    .param p1, "nativeViewHierarchyManager"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 148
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v0}, Lcom/facebook/react/animated/NativeAnimatedModule;->access$000(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object v0

    .line 149
    .local v0, "nodesManager":Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->val$operations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    .line 150
    .local v2, "operation":Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;
    invoke-interface {v2, v0}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->execute(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .line 151
    .end local v2    # "operation":Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method
