.class Lcom/facebook/react/devsupport/DevServerHelper$10;
.super Ljava/lang/Object;
.source "DevServerHelper.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->enqueueOnChangeEndpointLongPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .line 567
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$10;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 570
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$10;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$800(Lcom/facebook/react/devsupport/DevServerHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "ReactNative"

    const-string v1, "Error while requesting /onchange endpoint"

    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$10;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$1000(Lcom/facebook/react/devsupport/DevServerHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevServerHelper$10$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevServerHelper$10$1;-><init>(Lcom/facebook/react/devsupport/DevServerHelper$10;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$10;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->access$900(Lcom/facebook/react/devsupport/DevServerHelper;Z)V

    .line 589
    return-void
.end method
