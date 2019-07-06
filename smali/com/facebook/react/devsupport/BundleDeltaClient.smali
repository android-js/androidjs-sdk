.class public abstract Lcom/facebook/react/devsupport/BundleDeltaClient;
.super Ljava/lang/Object;
.source "BundleDeltaClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaNativeClient;,
        Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;,
        Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    }
.end annotation


# static fields
.field private static final METRO_DELTA_ID_HEADER:Ljava/lang/String; = "X-Metro-Delta-ID"


# instance fields
.field private mRevisionId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Lcom/facebook/react/devsupport/BundleDeltaClient;
    .locals 3
    .param p0, "type"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 42
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$1;->$SwitchMap$com$facebook$react$devsupport$BundleDeltaClient$ClientType:[I

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 48
    return-object v2

    .line 46
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaNativeClient;

    invoke-direct {v0, v2}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaNativeClient;-><init>(Lcom/facebook/react/devsupport/BundleDeltaClient$1;)V

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;

    invoke-direct {v0, v2}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;-><init>(Lcom/facebook/react/devsupport/BundleDeltaClient$1;)V

    return-object v0
.end method

.method static isDeltaUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundleUrl"    # Ljava/lang/String;

    .line 37
    const-string v0, ".delta?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract canHandle(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Z
.end method

.method public final declared-synchronized extendUrlForDelta(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bundleURL"    # Ljava/lang/String;

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient;->mRevisionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&revisionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/devsupport/BundleDeltaClient;->mRevisionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/devsupport/BundleDeltaClient;
    :cond_0
    move-object v0, p1

    :goto_0
    monitor-exit p0

    return-object v0

    .end local p1    # "bundleURL":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processDelta(Lokhttp3/Headers;Lokio/BufferedSource;Ljava/io/File;)Landroid/util/Pair;
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "body"    # Lokio/BufferedSource;
    .param p3, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Lokio/BufferedSource;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/facebook/react/bridge/NativeDeltaClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    const-string v0, "X-Metro-Delta-ID"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient;->mRevisionId:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p2, p3}, Lcom/facebook/react/devsupport/BundleDeltaClient;->processDelta(Lokio/BufferedSource;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    .end local p0    # "this":Lcom/facebook/react/devsupport/BundleDeltaClient;
    .end local p1    # "headers":Lokhttp3/Headers;
    .end local p2    # "body":Lokio/BufferedSource;
    .end local p3    # "outputFile":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract processDelta(Lokio/BufferedSource;Ljava/io/File;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/facebook/react/bridge/NativeDeltaClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 62
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient;->mRevisionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lcom/facebook/react/devsupport/BundleDeltaClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
