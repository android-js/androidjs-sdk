.class public Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;
.super Landroid/os/Handler;
.source "MessageQueueThreadHandler.java"


# instance fields
.field private final mExceptionHandler:Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "exceptionHandler"    # Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    iput-object p2, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;->mExceptionHandler:Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    .line 24
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 29
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;->mExceptionHandler:Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
