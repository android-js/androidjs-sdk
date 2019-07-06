.class Lcom/facebook/react/packagerconnection/FileIoHandler$1;
.super Lcom/facebook/react/packagerconnection/RequestOnlyHandler;
.source "FileIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/packagerconnection/FileIoHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;


# direct methods
.method constructor <init>(Lcom/facebook/react/packagerconnection/FileIoHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/packagerconnection/FileIoHandler;

    .line 70
    iput-object p1, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$1;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-direct {p0}, Lcom/facebook/react/packagerconnection/RequestOnlyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Ljava/lang/Object;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 7
    .param p1, "params"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "responder"    # Lcom/facebook/react/packagerconnection/Responder;

    .line 74
    iget-object v0, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$1;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v0}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$000(Lcom/facebook/react/packagerconnection/FileIoHandler;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 77
    .local v1, "paramsObj":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 80
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "mode":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 84
    const-string v3, "filename"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 88
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$1;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v4, v3}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$100(Lcom/facebook/react/packagerconnection/FileIoHandler;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/packagerconnection/Responder;->respond(Ljava/lang/Object;)V

    .line 95
    .end local v1    # "paramsObj":Lorg/json/JSONObject;
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    goto :goto_0

    .line 89
    .restart local v1    # "paramsObj":Lorg/json/JSONObject;
    .restart local v2    # "mode":Ljava/lang/String;
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v4

    .line 86
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "missing params.filename"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v4

    .line 82
    .end local v3    # "filename":Ljava/lang/String;
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "missing params.mode"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v3

    .line 78
    .end local v2    # "mode":Ljava/lang/String;
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "params must be an object { mode: string, filename: string }"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v1    # "paramsObj":Lorg/json/JSONObject;
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/packagerconnection/Responder;->error(Ljava/lang/Object;)V

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
