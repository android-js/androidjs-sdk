.class Lcom/facebook/react/devsupport/DevServerHelper$8;
.super Ljava/lang/Object;
.source "DevServerHelper.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;

.field final synthetic val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .line 479
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The packager does not seem to be running as we got an IOException requesting its status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;->onPackagerStatusFetched(Z)V

    .line 487
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ReactNative"

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got non-success http code from packager when requesting status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;->onPackagerStatusFetched(Z)V

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 500
    .local v0, "body":Lokhttp3/ResponseBody;
    if-nez v0, :cond_1

    .line 501
    const-string v3, "Got null body response from packager when requesting status"

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    invoke-interface {v2, v1}, Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;->onPackagerStatusFetched(Z)V

    .line 505
    return-void

    .line 507
    :cond_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "bodyString":Ljava/lang/String;
    const-string v4, "packager-status:running"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected response from packager when requesting status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    invoke-interface {v2, v1}, Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;->onPackagerStatusFetched(Z)V

    .line 513
    return-void

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper$8;->val$callback:Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;->onPackagerStatusFetched(Z)V

    .line 516
    return-void
.end method
