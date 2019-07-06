.class Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;
.super Ljava/lang/Object;
.source "WebsocketJavaScriptExecutor.java"

# interfaces
.implements Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    .line 106
    iput-object p1, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 119
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    iget-object v0, v0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->val$timeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    invoke-static {v0}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->access$200(Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    iget-object v0, v0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->val$callback:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->access$202(Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;Z)Z

    .line 124
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    iget-object v0, v0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->val$timeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    iget-object v0, v0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->this$0:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;

    iget-object v1, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    iget-object v1, v1, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->val$client:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;->access$102(Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;)Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;

    .line 111
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    invoke-static {v0}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->access$200(Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    iget-object v0, v0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->val$callback:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;->onSuccess()V

    .line 113
    iget-object v0, p0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2$1;->this$1:Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;->access$202(Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$2;Z)Z

    .line 115
    :cond_0
    return-void
.end method
