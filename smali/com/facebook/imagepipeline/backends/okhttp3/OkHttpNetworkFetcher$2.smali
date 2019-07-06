.class Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;->fetchWithRequest(Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

.field final synthetic val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

.field final synthetic val$fetchState:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    .line 151
    iput-object p1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->this$0:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    iput-object p2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$fetchState:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    iput-object p3, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 187
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->this$0:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;->access$100(Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    .line 188
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$fetchState:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->responseTime:J

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 157
    .local v0, "body":Lokhttp3/ResponseBody;
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->this$0:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected HTTP code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v1, p1, v2, v3}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;->access$100(Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 160
    return-void

    .line 163
    :cond_0
    :try_start_1
    const-string v1, "Content-Range"

    .line 164
    invoke-virtual {p2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/common/BytesRange;->fromContentRangeHeader(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v1

    .line 165
    .local v1, "responseRange":Lcom/facebook/imagepipeline/common/BytesRange;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    if-nez v2, :cond_1

    iget v2, v1, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$fetchState:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->setResponseBytesRange(Lcom/facebook/imagepipeline/common/BytesRange;)V

    .line 170
    iget-object v2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$fetchState:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->setOnNewResultStatusFlags(I)V

    .line 173
    :cond_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 174
    .local v2, "contentLength":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 175
    const-wide/16 v2, 0x0

    .line 177
    :cond_3
    iget-object v4, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    long-to-int v6, v2

    invoke-interface {v4, v5, v6}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onResponse(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "responseRange":Lcom/facebook/imagepipeline/common/BytesRange;
    .end local v2    # "contentLength":J
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->this$0:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    iget-object v3, p0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v2, p1, v1, v3}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;->access$100(Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :goto_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 182
    throw v1
.end method
