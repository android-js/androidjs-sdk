.class public Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$WebsocketExecutorTimeoutException;
.super Ljava/lang/Exception;
.source "WebsocketJavaScriptExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebsocketExecutorTimeoutException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
