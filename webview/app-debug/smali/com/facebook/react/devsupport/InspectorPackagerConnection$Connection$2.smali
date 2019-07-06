.class Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;
.super Landroid/os/AsyncTask;
.source "InspectorPackagerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->send(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lokhttp3/WebSocket;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

.field final synthetic val$object:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    .line 288
    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;->this$1:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    iput-object p2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;->val$object:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 288
    check-cast p1, [Lokhttp3/WebSocket;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;->doInBackground([Lokhttp3/WebSocket;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lokhttp3/WebSocket;)Ljava/lang/Void;
    .locals 4
    .param p1, "sockets"    # [Lokhttp3/WebSocket;

    .line 291
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;->val$object:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InspectorPackagerConnection"

    const-string v3, "Couldn\'t send event to packager"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 292
    :cond_1
    :goto_1
    return-object v0
.end method
