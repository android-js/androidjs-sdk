.class public Lcom/facebook/react/devsupport/BundleDownloader;
.super Ljava/lang/Object;
.source "BundleDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    }
.end annotation


# static fields
.field private static final FILES_CHANGED_COUNT_NOT_BUILT_BY_BUNDLER:I = -0x2

.field private static final TAG:Ljava/lang/String; = "BundleDownloader"


# instance fields
.field private mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

.field private final mClient:Lokhttp3/OkHttpClient;

.field private mDownloadBundleFromURLCall:Lokhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mClient:Lokhttp3/OkHttpClient;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/BundleDownloader;)Lokhttp3/Call;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;

    .line 37
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    return-object v0
.end method

.method static synthetic access$002(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;
    .param p1, "x1"    # Lokhttp3/Call;

    .line 37
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/BundleDownloader;Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lokhttp3/Response;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/io/File;
    .param p5, "x5"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .param p6, "x6"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .param p7, "x7"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/facebook/react/devsupport/BundleDownloader;->processMultipartResponse(Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/BundleDownloader;Ljava/lang/String;ILokhttp3/Headers;Lokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lokhttp3/Headers;
    .param p4, "x4"    # Lokio/BufferedSource;
    .param p5, "x5"    # Ljava/io/File;
    .param p6, "x6"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .param p7, "x7"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .param p8, "x8"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/facebook/react/devsupport/BundleDownloader;->processBundleResult(Ljava/lang/String;ILokhttp3/Headers;Lokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V

    return-void
.end method

.method private formatBundleUrl(Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Ljava/lang/String;
    .locals 1
    .param p1, "bundleURL"    # Ljava/lang/String;
    .param p2, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 190
    invoke-static {p1}, Lcom/facebook/react/devsupport/BundleDeltaClient;->isDeltaUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/facebook/react/devsupport/BundleDeltaClient;->canHandle(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

    .line 191
    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/BundleDeltaClient;->extendUrlForDelta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 190
    :goto_0
    return-object v0
.end method

.method private getBundleDeltaClient(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Lcom/facebook/react/devsupport/BundleDeltaClient;
    .locals 1
    .param p1, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 333
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/BundleDeltaClient;->canHandle(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/devsupport/BundleDeltaClient;->create(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Lcom/facebook/react/devsupport/BundleDeltaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

    return-object v0
.end method

.method private static populateBundleInfo(Ljava/lang/String;Lokhttp3/Headers;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .param p3, "bundleInfo"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    .line 355
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NONE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p3, v0}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->access$302(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    invoke-static {p3, p0}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->access$402(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    const-string v0, "X-Metro-Files-Changed-Count"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "filesChangedCountStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 361
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->access$502(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_1

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, -0x2

    invoke-static {p3, v2}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->access$502(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;I)I

    .line 366
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    return-void
.end method

.method private processBundleResult(Ljava/lang/String;ILokhttp3/Headers;Lokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "headers"    # Lokhttp3/Headers;
    .param p4, "body"    # Lokio/BufferedSource;
    .param p5, "outputFile"    # Ljava/io/File;
    .param p6, "bundleInfo"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .param p7, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .param p8, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    .line 286
    invoke-interface {p4}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "bodyString":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/react/common/DebugServerException;->parse(Ljava/lang/String;)Lcom/facebook/react/common/DebugServerException;

    move-result-object v1

    .line 288
    .local v1, "debugServerException":Lcom/facebook/react/common/DebugServerException;
    if-eqz v1, :cond_0

    .line 289
    invoke-interface {p8, v1}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 291
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "The development server returned response error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v4, "URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v3, "Body:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v3, Lcom/facebook/react/common/DebugServerException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/common/DebugServerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p8, v3}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onFailure(Ljava/lang/Exception;)V

    .line 298
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 301
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v1    # "debugServerException":Lcom/facebook/react/common/DebugServerException;
    :cond_1
    if-eqz p6, :cond_2

    .line 302
    invoke-static {p1, p3, p7, p6}, Lcom/facebook/react/devsupport/BundleDownloader;->populateBundleInfo(Ljava/lang/String;Lokhttp3/Headers;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V

    .line 305
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 310
    .local v1, "nativeDeltaClient":Lcom/facebook/react/bridge/NativeDeltaClient;
    invoke-static {p1}, Lcom/facebook/react/devsupport/BundleDeltaClient;->isDeltaUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    invoke-direct {p0, p7}, Lcom/facebook/react/devsupport/BundleDownloader;->getBundleDeltaClient(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Lcom/facebook/react/devsupport/BundleDeltaClient;

    move-result-object v2

    .line 313
    .local v2, "deltaClient":Lcom/facebook/react/devsupport/BundleDeltaClient;
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v2, p3, p4, v0}, Lcom/facebook/react/devsupport/BundleDeltaClient;->processDelta(Lokhttp3/Headers;Lokio/BufferedSource;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v3

    .line 315
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Lcom/facebook/react/bridge/NativeDeltaClient;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 316
    .local v4, "bundleWritten":Z
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lcom/facebook/react/bridge/NativeDeltaClient;

    .line 317
    .end local v2    # "deltaClient":Lcom/facebook/react/devsupport/BundleDeltaClient;
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Lcom/facebook/react/bridge/NativeDeltaClient;>;"
    goto :goto_1

    .line 318
    .end local v4    # "bundleWritten":Z
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mBundleDeltaClient:Lcom/facebook/react/devsupport/BundleDeltaClient;

    .line 319
    invoke-static {p4, v0}, Lcom/facebook/react/devsupport/BundleDownloader;->storePlainJSInFile(Lokio/BufferedSource;Ljava/io/File;)Z

    move-result v4

    .line 322
    .restart local v4    # "bundleWritten":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 324
    invoke-virtual {v0, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 325
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_5
    :goto_2
    invoke-interface {p8, v1}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onSuccess(Lcom/facebook/react/bridge/NativeDeltaClient;)V

    .line 330
    return-void
.end method

.method private processMultipartResponse(Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lokhttp3/Response;
    .param p3, "boundary"    # Ljava/lang/String;
    .param p4, "outputFile"    # Ljava/io/File;
    .param p5, "bundleInfo"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .param p7, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/facebook/react/devsupport/MultipartStreamReader;

    .line 206
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    move-object v2, p3

    invoke-direct {v0, v1, p3}, Lcom/facebook/react/devsupport/MultipartStreamReader;-><init>(Lokio/BufferedSource;Ljava/lang/String;)V

    .line 207
    .local v0, "bodyReader":Lcom/facebook/react/devsupport/MultipartStreamReader;
    new-instance v1, Lcom/facebook/react/devsupport/BundleDownloader$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/facebook/react/devsupport/BundleDownloader$2;-><init>(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Response;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/MultipartStreamReader;->readAllParts(Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)Z

    move-result v1

    .line 262
    .local v1, "completed":Z
    if-nez v1, :cond_0

    .line 263
    new-instance v3, Lcom/facebook/react/common/DebugServerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while reading multipart response.\n\nResponse code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n\nURL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/common/DebugServerException;-><init>(Ljava/lang/String;)V

    .line 263
    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 262
    :cond_0
    move-object/from16 v4, p7

    .line 272
    :goto_0
    return-void
.end method

.method private static storePlainJSInFile(Lokio/BufferedSource;Ljava/io/File;)Z
    .locals 2
    .param p0, "body"    # Lokio/BufferedSource;
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "output":Lokio/Sink;
    :try_start_0
    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    .line 344
    invoke-interface {p0, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 351
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 346
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 349
    :cond_1
    throw v1
.end method


# virtual methods
.method public downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)V
    .locals 7
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "bundleURL"    # Ljava/lang/String;
    .param p4, "bundleInfo"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 112
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/react/devsupport/BundleDownloader;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lokhttp3/Request$Builder;)V

    .line 114
    return-void
.end method

.method public downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;Lokhttp3/Request$Builder;)V
    .locals 9
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "bundleURL"    # Ljava/lang/String;
    .param p4, "bundleInfo"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "clientType"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .param p6, "requestBuilder"    # Lokhttp3/Request$Builder;

    .line 124
    nop

    .line 126
    invoke-direct {p0, p3, p5}, Lcom/facebook/react/devsupport/BundleDownloader;->formatBundleUrl(Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 133
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    iput-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    .line 134
    iget-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    new-instance v8, Lcom/facebook/react/devsupport/BundleDownloader$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/devsupport/BundleDownloader$1;-><init>(Lcom/facebook/react/devsupport/BundleDownloader;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)V

    invoke-interface {v1, v8}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 187
    return-void
.end method
