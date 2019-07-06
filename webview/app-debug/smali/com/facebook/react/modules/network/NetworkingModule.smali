.class public final Lcom/facebook/react/modules/network/NetworkingModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NetworkingModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "Networking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;,
        Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;,
        Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;
    }
.end annotation


# static fields
.field private static final CHUNK_TIMEOUT_NS:I = 0x5f5e100

.field private static final CONTENT_ENCODING_HEADER_NAME:Ljava/lang/String; = "content-encoding"

.field private static final CONTENT_TYPE_HEADER_NAME:Ljava/lang/String; = "content-type"

.field private static final MAX_CHUNK_SIZE_BETWEEN_FLUSHES:I = 0x2000

.field protected static final NAME:Ljava/lang/String; = "Networking"

.field private static final REQUEST_BODY_KEY_BASE64:Ljava/lang/String; = "base64"

.field private static final REQUEST_BODY_KEY_FORMDATA:Ljava/lang/String; = "formData"

.field private static final REQUEST_BODY_KEY_STRING:Ljava/lang/String; = "string"

.field private static final REQUEST_BODY_KEY_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "NetworkingModule"

.field private static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "user-agent"


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;

.field private final mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

.field private final mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

.field private final mDefaultUserAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestBodyHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mShuttingDown:Z

.field private final mUriHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 168
    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "defaultUserAgent"    # Ljava/lang/String;

    .line 188
    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 189
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "defaultUserAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "client"    # Lokhttp3/OkHttpClient;

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 162
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "defaultUserAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "client"    # Lokhttp3/OkHttpClient;
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkInterceptorCreator;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p4, "networkInterceptorCreators":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/modules/network/NetworkInterceptorCreator;>;"
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    .line 136
    if-eqz p4, :cond_1

    .line 137
    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 138
    .local v0, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkInterceptorCreator;

    .line 139
    .local v2, "networkInterceptorCreator":Lcom/facebook/react/modules/network/NetworkInterceptorCreator;
    invoke-interface {v2}, Lcom/facebook/react/modules/network/NetworkInterceptorCreator;->create()Lokhttp3/Interceptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 140
    .end local v2    # "networkInterceptorCreator":Lcom/facebook/react/modules/network/NetworkInterceptorCreator;
    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 143
    .end local v0    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    :cond_1
    iput-object p3, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    .line 144
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    .line 145
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/network/CookieJarContainer;

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    .line 147
    iput-object p2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkInterceptorCreator;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p2, "networkInterceptorCreators":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/modules/network/NetworkInterceptorCreator;>;"
    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method static synthetic access$000(JJ)Z
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->shouldDispatch(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/network/NetworkingModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/NetworkingModule;

    .line 58
    iget-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/react/modules/network/NetworkingModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/network/NetworkingModule;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->removeRequest(I)V

    return-void
.end method

.method static synthetic access$300(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Headers;

    .line 58
    invoke-static {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->translateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/react/modules/network/NetworkingModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/NetworkingModule;

    .line 58
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILokhttp3/ResponseBody;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/network/NetworkingModule;
    .param p1, "x1"    # Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->readWithProgress(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILokhttp3/ResponseBody;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/react/modules/network/NetworkingModule;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/NetworkingModule;

    .line 58
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private declared-synchronized addRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 614
    .end local p0    # "this":Lcom/facebook/react/modules/network/NetworkingModule;
    .end local p1    # "requestId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized cancelAllRequests()V
    .locals 3

    monitor-enter p0

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 624
    .local v1, "requestId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelRequest(I)V

    .line 625
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_0

    .line 626
    .end local p0    # "this":Lcom/facebook/react/modules/network/NetworkingModule;
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private cancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 654
    new-instance v0, Lcom/facebook/react/modules/network/NetworkingModule$4;

    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/modules/network/NetworkingModule$4;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/bridge/ReactContext;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 659
    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 660
    return-void
.end method

.method private constructMultipartBody(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;I)Lokhttp3/MultipartBody$Builder;
    .locals 16
    .param p1, "body"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 671
    move/from16 v0, p3

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v1

    .line 672
    .local v1, "eventEmitter":Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 673
    .local v2, "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    invoke-static/range {p2 .. p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 675
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 676
    move-object/from16 v5, p1

    invoke-interface {v5, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    .line 679
    .local v6, "bodyPart":Lcom/facebook/react/bridge/ReadableMap;
    const-string v7, "headers"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v7

    .line 680
    .local v7, "headersArray":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-direct {v9, v7, v8}, Lcom/facebook/react/modules/network/NetworkingModule;->extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;

    move-result-object v10

    .line 681
    .local v10, "headers":Lokhttp3/Headers;
    if-nez v10, :cond_0

    .line 682
    const-string v11, "Missing or invalid header format for FormData part."

    invoke-static {v1, v0, v11, v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    return-object v8

    .line 689
    :cond_0
    const/4 v11, 0x0

    .line 690
    .local v11, "partContentType":Lokhttp3/MediaType;
    const-string v12, "content-type"

    invoke-virtual {v10, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 691
    .local v13, "partContentTypeStr":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 692
    invoke-static {v13}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v11

    .line 695
    invoke-virtual {v10}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v10

    .line 698
    :cond_1
    const-string v12, "string"

    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 699
    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, "bodyValue":Ljava/lang/String;
    invoke-static {v11, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 701
    .end local v8    # "bodyValue":Ljava/lang/String;
    goto :goto_1

    :cond_2
    const-string v12, "uri"

    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 702
    if-nez v11, :cond_3

    .line 703
    const-string v12, "Binary FormData part needs a content-type header."

    invoke-static {v1, v0, v12, v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    return-object v8

    .line 710
    :cond_3
    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 711
    .local v12, "fileContentUriStr":Ljava/lang/String;
    nop

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 713
    .local v14, "fileInputStream":Ljava/io/InputStream;
    if-nez v14, :cond_4

    .line 714
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve file for uri "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    invoke-static {v1, v0, v8, v15}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    return-object v15

    .line 721
    :cond_4
    invoke-static {v11, v14}, Lcom/facebook/react/modules/network/RequestBodyUtil;->create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 722
    .end local v12    # "fileContentUriStr":Ljava/lang/String;
    .end local v14    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 723
    :cond_5
    move-object v15, v8

    const-string v8, "Unrecognized FormData part."

    invoke-static {v1, v0, v8, v15}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    .end local v6    # "bodyPart":Lcom/facebook/react/bridge/ReadableMap;
    .end local v7    # "headersArray":Lcom/facebook/react/bridge/ReadableArray;
    .end local v10    # "headers":Lokhttp3/Headers;
    .end local v11    # "partContentType":Lokhttp3/MediaType;
    .end local v13    # "partContentTypeStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v9, p0

    move-object/from16 v5, p1

    .line 726
    .end local v3    # "i":I
    .end local v4    # "size":I
    return-object v2
.end method

.method private extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;
    .locals 9
    .param p1, "headersArray"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestData"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 735
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 736
    return-object v0

    .line 738
    :cond_0
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 739
    .local v1, "headersBuilder":Lokhttp3/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "headersIdx":I
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_5

    .line 740
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    .line 741
    .local v6, "header":Lcom/facebook/react/bridge/ReadableArray;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 744
    :cond_1
    invoke-interface {v6, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/react/modules/network/HeaderUtil;->stripHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "headerName":Ljava/lang/String;
    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/react/modules/network/HeaderUtil;->stripHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "headerValue":Ljava/lang/String;
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    .line 749
    :cond_2
    invoke-virtual {v1, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 739
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    .end local v6    # "header":Lcom/facebook/react/bridge/ReadableArray;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .restart local v4    # "headerName":Ljava/lang/String;
    .restart local v5    # "headerValue":Ljava/lang/String;
    .restart local v6    # "header":Lcom/facebook/react/bridge/ReadableArray;
    :cond_3
    :goto_1
    return-object v0

    .line 742
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v0

    .line 751
    .end local v2    # "headersIdx":I
    .end local v3    # "size":I
    .end local v6    # "header":Lcom/facebook/react/bridge/ReadableArray;
    :cond_5
    const-string v0, "user-agent"

    invoke-virtual {v1, v0}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 752
    invoke-virtual {v1, v0, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 756
    :cond_6
    if-eqz p2, :cond_7

    const-string v0, "string"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    :cond_7
    move v0, v4

    .line 757
    .local v0, "isGzipSupported":Z
    if-nez v0, :cond_8

    .line 758
    const-string v2, "content-encoding"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 761
    :cond_8
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method private getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .locals 2

    .line 765
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-object v0
.end method

.method private readWithProgress(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILokhttp3/ResponseBody;)V
    .locals 16
    .param p1, "eventEmitter"    # Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .param p2, "requestId"    # I
    .param p3, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    const-wide/16 v1, -0x1

    .line 580
    .local v1, "totalBytesRead":J
    const-wide/16 v3, -0x1

    .line 582
    .local v3, "contentLength":J
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 583
    .local v0, "progressResponseBody":Lcom/facebook/react/modules/network/ProgressResponseBody;
    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ProgressResponseBody;->totalBytesRead()J

    move-result-wide v5

    move-wide v1, v5

    .line 584
    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ProgressResponseBody;->contentLength()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    .line 587
    .end local v0    # "progressResponseBody":Lcom/facebook/react/modules/network/ProgressResponseBody;
    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 589
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 590
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    sget-object v5, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    move-object v12, v0

    .line 592
    .local v12, "charset":Ljava/nio/charset/Charset;
    new-instance v0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;

    invoke-direct {v0, v12}, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;-><init>(Ljava/nio/charset/Charset;)V

    move-object v13, v0

    .line 593
    .local v13, "streamDecoder":Lcom/facebook/react/modules/network/ProgressiveStringDecoder;
    invoke-virtual/range {p3 .. p3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v14

    .line 595
    .local v14, "inputStream":Ljava/io/InputStream;
    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    .line 597
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v15, v5

    .local v15, "read":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 598
    nop

    .line 601
    invoke-virtual {v13, v0, v15}, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->decodeNext([BI)Ljava/lang/String;

    move-result-object v7

    .line 598
    move-object/from16 v5, p1

    move/from16 v6, p2

    move-wide v8, v1

    move-wide v10, v3

    invoke-static/range {v5 .. v11}, Lcom/facebook/react/modules/network/ResponseUtil;->onIncrementalDataReceived(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 606
    .end local v0    # "buffer":[B
    .end local v15    # "read":I
    :cond_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 607
    nop

    .line 608
    return-void

    .line 606
    :catchall_0
    move-exception v0

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 607
    throw v0

    return-void
.end method

.method private declared-synchronized removeRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    .line 618
    .end local p0    # "this":Lcom/facebook/react/modules/network/NetworkingModule;
    .end local p1    # "requestId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static shouldDispatch(JJ)Z
    .locals 3
    .param p0, "now"    # J
    .param p2, "last"    # J

    .line 611
    const-wide/32 v0, 0x5f5e100

    add-long/2addr v0, p2

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static translateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .param p0, "headers"    # Lokhttp3/Headers;

    .line 630
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 631
    .local v0, "responseHeaders":Lcom/facebook/react/bridge/WritableMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 632
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "headerName":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 635
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_0
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v2    # "headerName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)Lokhttp3/RequestBody;
    .locals 1
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .param p2, "eventEmitter"    # Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .param p3, "requestId"    # I

    .line 556
    if-nez p1, :cond_0

    .line 557
    const/4 v0, 0x0

    return-object v0

    .line 559
    :cond_0
    new-instance v0, Lcom/facebook/react/modules/network/NetworkingModule$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule$3;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)V

    invoke-static {p1, v0}, Lcom/facebook/react/modules/network/RequestBodyUtil;->createProgressRequest(Lokhttp3/RequestBody;Lcom/facebook/react/modules/network/ProgressListener;)Lcom/facebook/react/modules/network/ProgressRequestBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abortRequest(I)V
    .locals 0
    .param p1, "requestId"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 647
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelRequest(I)V

    .line 648
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->removeRequest(I)V

    .line 649
    return-void
.end method

.method public addRequestBodyHandler(Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 219
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public addResponseHandler(Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    .line 223
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addUriHandler(Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 215
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public clearCookies(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->clearCookies(Lcom/facebook/react/bridge/Callback;)V

    .line 665
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "Networking"

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    new-instance v1, Lokhttp3/JavaNetCookieJar;

    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v1, v2}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 194
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    .line 204
    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelAllRequests()V

    .line 206
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->destroy()V

    .line 207
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    invoke-interface {v0}, Lcom/facebook/react/modules/network/CookieJarContainer;->removeCookieJar()V

    .line 209
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    return-void
.end method

.method public removeRequestBodyHandler(Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 231
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public removeResponseHandler(Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    .line 235
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public removeUriHandler(Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 227
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "headers"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p5, "data"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p6, "responseType"    # Ljava/lang/String;
    .param p7, "useIncrementalUpdates"    # Z
    .param p8, "timeout"    # I
    .param p9, "withCredentials"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 250
    :try_start_0
    invoke-virtual/range {p0 .. p9}, Lcom/facebook/react/modules/network/NetworkingModule;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send url request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkingModule"

    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2, v0}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    .locals 22
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "headers"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p5, "data"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p6, "responseType"    # Ljava/lang/String;
    .param p7, "useIncrementalUpdates"    # Z
    .param p8, "timeout"    # I
    .param p9, "withCredentials"    # Z

    .line 271
    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p8

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v12

    .line 274
    .local v12, "eventEmitter":Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 278
    .local v2, "handler":Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;
    invoke-interface {v2, v0, v10}, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;->supports(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-interface {v2, v0}, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;->fetch(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 280
    .local v1, "res":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {v12, v8, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceived(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILcom/facebook/react/bridge/WritableMap;)V

    .line 281
    invoke-static {v12, v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestSuccess(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 282
    return-void

    .line 284
    .end local v1    # "res":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;
    :cond_0
    goto :goto_0

    .line 288
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    nop

    .line 292
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v0, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    .local v0, "requestBuilder":Lokhttp3/Request$Builder;
    nop

    .line 298
    if-eqz v8, :cond_2

    .line 299
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 302
    :cond_2
    iget-object v2, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v14

    .line 304
    .local v14, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    if-nez p9, :cond_3

    .line 305
    sget-object v2, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    invoke-virtual {v14, v2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 310
    :cond_3
    if-eqz p7, :cond_4

    .line 311
    new-instance v2, Lcom/facebook/react/modules/network/NetworkingModule$1;

    invoke-direct {v2, v7, v10, v12, v8}, Lcom/facebook/react/modules/network/NetworkingModule$1;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Ljava/lang/String;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)V

    invoke-virtual {v14, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 348
    :cond_4
    iget-object v2, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v2

    if-eq v11, v2, :cond_5

    .line 349
    int-to-long v2, v11

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 351
    :cond_5
    invoke-virtual {v14}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v15

    .line 353
    .local v15, "client":Lokhttp3/OkHttpClient;
    move-object/from16 v6, p4

    invoke-direct {v7, v6, v9}, Lcom/facebook/react/modules/network/NetworkingModule;->extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;

    move-result-object v5

    .line 354
    .local v5, "requestHeaders":Lokhttp3/Headers;
    if-nez v5, :cond_6

    .line 355
    const-string v2, "Unrecognized headers format"

    invoke-static {v12, v8, v2, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    return-void

    .line 358
    :cond_6
    const-string v2, "content-type"

    invoke-virtual {v5, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "contentType":Ljava/lang/String;
    const-string v3, "content-encoding"

    invoke-virtual {v5, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 360
    .local v16, "contentEncoding":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    if-eqz v9, :cond_8

    .line 365
    iget-object v4, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 366
    .local v1, "curHandler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    invoke-interface {v1, v9}, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;->supports(Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 367
    move-object v3, v1

    .line 368
    move-object v4, v3

    goto :goto_2

    .line 370
    .end local v1    # "curHandler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 374
    :cond_8
    move-object v4, v3

    .end local v3    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .local v4, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    :goto_2
    if-eqz v9, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "get"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    goto/16 :goto_5

    .line 376
    :cond_9
    if-eqz v4, :cond_a

    .line 377
    invoke-interface {v4, v9, v2}, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;->toRequestBody(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    move-object v5, v1

    .local v1, "requestBody":Lokhttp3/RequestBody;
    goto/16 :goto_6

    .line 378
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_a
    const-string v1, "string"

    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v17, v4

    .end local v4    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .local v17, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    const-string v4, "Payload is set but no content-type header specified"

    if-eqz v3, :cond_f

    .line 379
    if-nez v2, :cond_b

    .line 380
    const/4 v1, 0x0

    invoke-static {v12, v8, v4, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    return-void

    .line 387
    :cond_b
    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "body":Ljava/lang/String;
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 389
    .local v3, "contentMediaType":Lokhttp3/MediaType;
    invoke-static/range {v16 .. v16}, Lcom/facebook/react/modules/network/RequestBodyUtil;->isGzipEncoding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 390
    invoke-static {v3, v1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->createGzip(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 391
    .local v4, "requestBody":Lokhttp3/RequestBody;
    if-nez v4, :cond_c

    .line 392
    move-object/from16 v19, v4

    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    .local v19, "requestBody":Lokhttp3/RequestBody;
    const-string v4, "Failed to gzip request body"

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "requestHeaders":Lokhttp3/Headers;
    .local v20, "requestHeaders":Lokhttp3/Headers;
    invoke-static {v12, v8, v4, v5}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    return-void

    .line 391
    .end local v19    # "requestBody":Lokhttp3/RequestBody;
    .end local v20    # "requestHeaders":Lokhttp3/Headers;
    .restart local v4    # "requestBody":Lokhttp3/RequestBody;
    .restart local v5    # "requestHeaders":Lokhttp3/Headers;
    :cond_c
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    .end local v5    # "requestHeaders":Lokhttp3/Headers;
    .restart local v19    # "requestBody":Lokhttp3/RequestBody;
    .restart local v20    # "requestHeaders":Lokhttp3/Headers;
    move-object/from16 v1, v19

    goto :goto_4

    .line 399
    .end local v19    # "requestBody":Lokhttp3/RequestBody;
    .end local v20    # "requestHeaders":Lokhttp3/Headers;
    .restart local v5    # "requestHeaders":Lokhttp3/Headers;
    :cond_d
    move-object/from16 v20, v5

    .end local v5    # "requestHeaders":Lokhttp3/Headers;
    .restart local v20    # "requestHeaders":Lokhttp3/Headers;
    if-nez v3, :cond_e

    sget-object v4, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_3

    :cond_e
    sget-object v4, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 401
    invoke-virtual {v3, v4}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_3
    nop

    .line 402
    .local v4, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v3, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    .line 404
    .end local v3    # "contentMediaType":Lokhttp3/MediaType;
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    :goto_4
    move-object v5, v1

    move-object/from16 v18, v2

    goto/16 :goto_6

    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v20    # "requestHeaders":Lokhttp3/Headers;
    .restart local v5    # "requestHeaders":Lokhttp3/Headers;
    :cond_f
    move-object/from16 v20, v5

    .end local v5    # "requestHeaders":Lokhttp3/Headers;
    .restart local v20    # "requestHeaders":Lokhttp3/Headers;
    const-string v1, "base64"

    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 405
    if-nez v2, :cond_10

    .line 406
    const/4 v1, 0x0

    invoke-static {v12, v8, v4, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    return-void

    .line 413
    :cond_10
    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "base64String":Ljava/lang/String;
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 415
    .restart local v3    # "contentMediaType":Lokhttp3/MediaType;
    invoke-static {v1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 416
    .end local v3    # "contentMediaType":Lokhttp3/MediaType;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    move-object v5, v1

    move-object/from16 v18, v2

    goto/16 :goto_6

    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_11
    const-string v1, "uri"

    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 417
    if-nez v2, :cond_12

    .line 418
    const/4 v1, 0x0

    invoke-static {v12, v8, v4, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    return-void

    .line 425
    :cond_12
    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "uri":Ljava/lang/String;
    nop

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 428
    .local v3, "fileInputStream":Ljava/io/InputStream;
    if-nez v3, :cond_13

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve file for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v12, v8, v4, v5}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    return-void

    .line 436
    :cond_13
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/facebook/react/modules/network/RequestBodyUtil;->create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 437
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    move-object v5, v1

    move-object/from16 v18, v2

    goto :goto_6

    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_14
    const-string v1, "formData"

    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 438
    if-nez v2, :cond_15

    .line 439
    const-string v2, "multipart/form-data"

    .line 441
    :cond_15
    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 442
    .local v1, "parts":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 443
    invoke-direct {v7, v1, v2, v8}, Lcom/facebook/react/modules/network/NetworkingModule;->constructMultipartBody(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;I)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 444
    .local v3, "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    if-nez v3, :cond_16

    .line 445
    return-void

    .line 447
    :cond_16
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 448
    .end local v3    # "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    move-object v5, v1

    move-object/from16 v18, v2

    goto :goto_6

    .line 450
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v18, v2

    .restart local v1    # "requestBody":Lokhttp3/RequestBody;
    goto :goto_6

    .line 374
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v17    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .end local v20    # "requestHeaders":Lokhttp3/Headers;
    .local v4, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .restart local v5    # "requestHeaders":Lokhttp3/Headers;
    :cond_18
    move-object/from16 v17, v4

    move-object/from16 v20, v5

    .line 375
    .end local v4    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .end local v5    # "requestHeaders":Lokhttp3/Headers;
    .restart local v17    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .restart local v20    # "requestHeaders":Lokhttp3/Headers;
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v18, v2

    .line 453
    .end local v2    # "contentType":Ljava/lang/String;
    .local v5, "requestBody":Lokhttp3/RequestBody;
    .local v18, "contentType":Ljava/lang/String;
    :goto_6
    nop

    .line 455
    invoke-direct {v7, v5, v12, v8}, Lcom/facebook/react/modules/network/NetworkingModule;->wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)Lokhttp3/RequestBody;

    move-result-object v1

    .line 453
    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 457
    invoke-direct {v7, v8}, Lcom/facebook/react/modules/network/NetworkingModule;->addRequest(I)V

    .line 458
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v15, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v2, Lcom/facebook/react/modules/network/NetworkingModule$2;

    move-object v1, v2

    move-object/from16 v19, v0

    move-object v0, v2

    .end local v0    # "requestBuilder":Lokhttp3/Request$Builder;
    .local v19, "requestBuilder":Lokhttp3/Request$Builder;
    move-object/from16 v2, p0

    move-object v7, v3

    move/from16 v3, p3

    move-object v4, v12

    move-object/from16 v21, v5

    .end local v5    # "requestBody":Lokhttp3/RequestBody;
    .local v21, "requestBody":Lokhttp3/RequestBody;
    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/modules/network/NetworkingModule$2;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;ILcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 550
    return-void

    .line 293
    .end local v14    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    .end local v15    # "client":Lokhttp3/OkHttpClient;
    .end local v16    # "contentEncoding":Ljava/lang/String;
    .end local v17    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .end local v18    # "contentType":Ljava/lang/String;
    .end local v19    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v20    # "requestHeaders":Lokhttp3/Headers;
    .end local v21    # "requestBody":Lokhttp3/RequestBody;
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v12, v8, v1, v2}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    return-void

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object/from16 v13, p2

    .line 286
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v8, v1, v0}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    return-void
.end method
