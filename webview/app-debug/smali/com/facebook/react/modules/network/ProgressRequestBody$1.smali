.class Lcom/facebook/react/modules/network/ProgressRequestBody$1;
.super Lcom/facebook/react/modules/network/CountingOutputStream;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/ProgressRequestBody;->outputStreamSink(Lokio/BufferedSink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/ProgressRequestBody;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/network/ProgressRequestBody;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 58
    iput-object p1, p0, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-direct {p0, p2}, Lcom/facebook/react/modules/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private sendProgressUpdate()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->getCount()J

    move-result-wide v6

    .line 73
    .local v6, "bytesWritten":J
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ProgressRequestBody;->contentLength()J

    move-result-wide v8

    .line 74
    .local v8, "contentLength":J
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-static {v0}, Lcom/facebook/react/modules/network/ProgressRequestBody;->access$000(Lcom/facebook/react/modules/network/ProgressRequestBody;)Lcom/facebook/react/modules/network/ProgressListener;

    move-result-object v0

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    move-wide v1, v6

    move-wide v3, v8

    invoke-interface/range {v0 .. v5}, Lcom/facebook/react/modules/network/ProgressListener;->onProgress(JJZ)V

    .line 76
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/facebook/react/modules/network/CountingOutputStream;->write(I)V

    .line 68
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->sendProgressUpdate()V

    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/CountingOutputStream;->write([BII)V

    .line 62
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->sendProgressUpdate()V

    .line 63
    return-void
.end method
