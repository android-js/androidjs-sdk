.class Lcom/facebook/react/modules/network/ProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/network/ProgressResponseBody;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/ProgressResponseBody;Lokio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/network/ProgressResponseBody;
    .param p2, "x0"    # Lokio/Source;

    .line 54
    iput-object p1, p0, Lcom/facebook/react/modules/network/ProgressResponseBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 14
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    move-object v0, p0

    invoke-super/range {p0 .. p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v1

    .line 58
    .local v1, "bytesRead":J
    iget-object v3, v0, Lcom/facebook/react/modules/network/ProgressResponseBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressResponseBody;

    invoke-static {v3}, Lcom/facebook/react/modules/network/ProgressResponseBody;->access$000(Lcom/facebook/react/modules/network/ProgressResponseBody;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v1, v6

    if-eqz v8, :cond_0

    move-wide v8, v1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    add-long/2addr v4, v8

    invoke-static {v3, v4, v5}, Lcom/facebook/react/modules/network/ProgressResponseBody;->access$002(Lcom/facebook/react/modules/network/ProgressResponseBody;J)J

    .line 59
    iget-object v3, v0, Lcom/facebook/react/modules/network/ProgressResponseBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressResponseBody;

    invoke-static {v3}, Lcom/facebook/react/modules/network/ProgressResponseBody;->access$200(Lcom/facebook/react/modules/network/ProgressResponseBody;)Lcom/facebook/react/modules/network/ProgressListener;

    move-result-object v8

    iget-object v3, v0, Lcom/facebook/react/modules/network/ProgressResponseBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 60
    invoke-static {v3}, Lcom/facebook/react/modules/network/ProgressResponseBody;->access$000(Lcom/facebook/react/modules/network/ProgressResponseBody;)J

    move-result-wide v9

    iget-object v3, v0, Lcom/facebook/react/modules/network/ProgressResponseBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressResponseBody;

    invoke-static {v3}, Lcom/facebook/react/modules/network/ProgressResponseBody;->access$100(Lcom/facebook/react/modules/network/ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 59
    :goto_1
    invoke-interface/range {v8 .. v13}, Lcom/facebook/react/modules/network/ProgressListener;->onProgress(JJZ)V

    .line 61
    return-wide v1
.end method
