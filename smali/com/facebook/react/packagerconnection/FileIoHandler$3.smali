.class Lcom/facebook/react/packagerconnection/FileIoHandler$3;
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

    .line 122
    iput-object p1, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$3;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

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

    .line 126
    iget-object v0, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$3;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v0}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$000(Lcom/facebook/react/packagerconnection/FileIoHandler;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 129
    .local v1, "paramsObj":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 132
    const-string v2, "file"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 133
    .local v2, "file":I
    if-eqz v2, :cond_2

    .line 136
    const-string v3, "size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 137
    .local v3, "size":I
    if-eqz v3, :cond_1

    .line 140
    iget-object v4, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$3;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v4}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$000(Lcom/facebook/react/packagerconnection/FileIoHandler;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;

    .line 141
    .local v4, "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v4, v3}, Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;->read(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/facebook/react/packagerconnection/Responder;->respond(Ljava/lang/Object;)V

    .line 148
    .end local v1    # "paramsObj":Lorg/json/JSONObject;
    .end local v2    # "file":I
    .end local v3    # "size":I
    .end local v4    # "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    goto :goto_0

    .line 142
    .restart local v1    # "paramsObj":Lorg/json/JSONObject;
    .restart local v2    # "file":I
    .restart local v3    # "size":I
    .restart local v4    # "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    :cond_0
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "invalid file handle, it might have timed out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v5

    .line 138
    .end local v4    # "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "invalid or missing read size"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v4

    .line 134
    .end local v3    # "size":I
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "invalid or missing file handle"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v3

    .line 130
    .end local v2    # "file":I
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "params must be an object { file: handle, size: number }"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v1    # "paramsObj":Lorg/json/JSONObject;
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/packagerconnection/Responder;->error(Ljava/lang/Object;)V

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
