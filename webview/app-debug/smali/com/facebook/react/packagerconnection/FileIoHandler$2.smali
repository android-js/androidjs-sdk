.class Lcom/facebook/react/packagerconnection/FileIoHandler$2;
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

    .line 99
    iput-object p1, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$2;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-direct {p0}, Lcom/facebook/react/packagerconnection/RequestOnlyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Ljava/lang/Object;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "responder"    # Lcom/facebook/react/packagerconnection/Responder;

    .line 103
    iget-object v0, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$2;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v0}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$000(Lcom/facebook/react/packagerconnection/FileIoHandler;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$2;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v1}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$000(Lcom/facebook/react/packagerconnection/FileIoHandler;)Ljava/util/Map;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;

    .line 109
    .local v1, "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    if-eqz v1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/facebook/react/packagerconnection/FileIoHandler$2;->this$0:Lcom/facebook/react/packagerconnection/FileIoHandler;

    invoke-static {v2}, Lcom/facebook/react/packagerconnection/FileIoHandler;->access$000(Lcom/facebook/react/packagerconnection/FileIoHandler;)Ljava/util/Map;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v1}, Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;->close()V

    .line 115
    const-string v2, ""

    invoke-interface {p2, v2}, Lcom/facebook/react/packagerconnection/Responder;->respond(Ljava/lang/Object;)V

    .line 118
    .end local v1    # "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    goto :goto_0

    .line 110
    .restart local v1    # "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "invalid file handle, it might have timed out"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v2

    .line 106
    .end local v1    # "stream":Lcom/facebook/react/packagerconnection/FileIoHandler$TtlFileInputStream;
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "params must be a file handle"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":Ljava/lang/Object;
    .end local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .restart local p1    # "params":Ljava/lang/Object;
    .restart local p2    # "responder":Lcom/facebook/react/packagerconnection/Responder;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/packagerconnection/Responder;->error(Ljava/lang/Object;)V

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
