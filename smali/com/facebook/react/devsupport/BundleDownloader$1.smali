.class Lcom/facebook/react/devsupport/BundleDownloader$1;
.super Ljava/lang/Object;
.source "BundleDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/BundleDownloader;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lokhttp3/Request$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/BundleDownloader;

.field final synthetic val$bundleInfo:Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

.field final synthetic val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

.field final synthetic val$clientType:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

.field final synthetic val$outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/BundleDownloader;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/BundleDownloader;

    .line 135
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    iput-object p2, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    iput-object p3, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$outputFile:Ljava/io/File;

    iput-object p4, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$bundleInfo:Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    iput-object p5, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$clientType:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 139
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0}, Lcom/facebook/react/devsupport/BundleDownloader;->access$000(Lcom/facebook/react/devsupport/BundleDownloader;)Lokhttp3/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0}, Lcom/facebook/react/devsupport/BundleDownloader;->access$000(Lcom/facebook/react/devsupport/BundleDownloader;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/BundleDownloader;->access$002(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Call;)Lokhttp3/Call;

    .line 145
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "Could not connect to development server."

    invoke-static {v2, v1, p2}, Lcom/facebook/react/common/DebugServerException;->makeGeneric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/react/common/DebugServerException;

    move-result-object v1

    .line 145
    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onFailure(Ljava/lang/Exception;)V

    .line 150
    return-void

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/BundleDownloader;->access$002(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Call;)Lokhttp3/Call;

    .line 141
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 18
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0}, Lcom/facebook/react/devsupport/BundleDownloader;->access$000(Lcom/facebook/react/devsupport/BundleDownloader;)Lokhttp3/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0}, Lcom/facebook/react/devsupport/BundleDownloader;->access$000(Lcom/facebook/react/devsupport/BundleDownloader;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v13, p2

    goto/16 :goto_4

    .line 159
    :cond_0
    iget-object v0, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0, v2}, Lcom/facebook/react/devsupport/BundleDownloader;->access$002(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Call;)Lokhttp3/Call;

    .line 161
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "url":Ljava/lang/String;
    const-string v0, "content-type"

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "contentType":Ljava/lang/String;
    const-string v0, "multipart/mixed;.*boundary=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 166
    .local v15, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 167
    .local v11, "match":Ljava/util/regex/Matcher;
    move-object/from16 v16, p2

    .line 168
    .local v16, "r":Lokhttp3/Response;
    :try_start_0
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 169
    :try_start_1
    iget-object v3, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    const/4 v0, 0x1

    .line 170
    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$outputFile:Ljava/io/File;

    iget-object v8, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$bundleInfo:Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    iget-object v9, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$clientType:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    iget-object v10, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 169
    move-object v4, v12

    move-object/from16 v5, v16

    invoke-static/range {v3 .. v10}, Lcom/facebook/react/devsupport/BundleDownloader;->access$100(Lcom/facebook/react/devsupport/BundleDownloader;Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v11

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object/from16 v17, v11

    move-object v2, v0

    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v11

    goto :goto_1

    .line 174
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    .line 176
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v5

    .line 177
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    .line 178
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v7

    iget-object v8, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$outputFile:Ljava/io/File;

    iget-object v9, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$bundleInfo:Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    iget-object v10, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$clientType:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    iget-object v0, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    move-object v4, v12

    move-object/from16 v17, v11

    .end local v11    # "match":Ljava/util/regex/Matcher;
    .local v17, "match":Ljava/util/regex/Matcher;
    move-object v11, v0

    :try_start_3
    invoke-static/range {v3 .. v11}, Lcom/facebook/react/devsupport/BundleDownloader;->access$200(Lcom/facebook/react/devsupport/BundleDownloader;Ljava/lang/String;ILokhttp3/Headers;Lokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 184
    :goto_0
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V

    .line 185
    .end local v16    # "r":Lokhttp3/Response;
    :cond_2
    return-void

    .line 167
    .restart local v16    # "r":Lokhttp3/Response;
    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_1

    .line 184
    .end local v17    # "match":Ljava/util/regex/Matcher;
    .restart local v11    # "match":Ljava/util/regex/Matcher;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v11

    move-object v3, v2

    move-object v2, v0

    .end local v11    # "match":Ljava/util/regex/Matcher;
    .restart local v17    # "match":Ljava/util/regex/Matcher;
    goto :goto_2

    .line 167
    .end local v17    # "match":Ljava/util/regex/Matcher;
    .restart local v11    # "match":Ljava/util/regex/Matcher;
    :catch_2
    move-exception v0

    move-object/from16 v17, v11

    move-object v2, v0

    .end local v11    # "match":Ljava/util/regex/Matcher;
    .end local v12    # "url":Ljava/lang/String;
    .end local v14    # "contentType":Ljava/lang/String;
    .end local v15    # "regex":Ljava/util/regex/Pattern;
    .end local v16    # "r":Lokhttp3/Response;
    .end local p1    # "call":Lokhttp3/Call;
    .end local p2    # "response":Lokhttp3/Response;
    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 184
    .restart local v12    # "url":Ljava/lang/String;
    .restart local v14    # "contentType":Ljava/lang/String;
    .restart local v15    # "regex":Ljava/util/regex/Pattern;
    .restart local v16    # "r":Lokhttp3/Response;
    .restart local v17    # "match":Ljava/util/regex/Matcher;
    .restart local p1    # "call":Lokhttp3/Call;
    .restart local p2    # "response":Lokhttp3/Response;
    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_2
    if-eqz v16, :cond_4

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V

    :cond_4
    :goto_3
    throw v2

    .line 155
    .end local v12    # "url":Ljava/lang/String;
    .end local v14    # "contentType":Ljava/lang/String;
    .end local v15    # "regex":Ljava/util/regex/Pattern;
    .end local v16    # "r":Lokhttp3/Response;
    .end local v17    # "match":Ljava/util/regex/Matcher;
    :cond_5
    move-object/from16 v13, p2

    .line 156
    :goto_4
    iget-object v0, v1, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    invoke-static {v0, v2}, Lcom/facebook/react/devsupport/BundleDownloader;->access$002(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Call;)Lokhttp3/Call;

    .line 157
    return-void
.end method
