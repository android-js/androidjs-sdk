.class Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;
.super Ljava/lang/Object;
.source "CatalystInstanceImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReactCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/CatalystInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgeCallback"
.end annotation


# instance fields
.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/CatalystInstanceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V
    .locals 1
    .param p1, "outer"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    .line 149
    return-void
.end method


# virtual methods
.method public decrementPendingJSCalls()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 170
    .local v0, "impl":Lcom/facebook/react/bridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 171
    invoke-static {v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$400(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    .line 173
    :cond_0
    return-void
.end method

.method public incrementPendingJSCalls()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 162
    .local v0, "impl":Lcom/facebook/react/bridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$300(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onBatchComplete()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 154
    .local v0, "impl":Lcom/facebook/react/bridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$200(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/NativeModuleRegistry;->onBatchComplete()V

    .line 157
    :cond_0
    return-void
.end method
