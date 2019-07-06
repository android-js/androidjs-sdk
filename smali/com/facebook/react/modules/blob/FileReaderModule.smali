.class public Lcom/facebook/react/modules/blob/FileReaderModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FileReaderModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FileReaderModule"
.end annotation


# static fields
.field private static final ERROR_INVALID_BLOB:Ljava/lang/String; = "ERROR_INVALID_BLOB"

.field protected static final NAME:Ljava/lang/String; = "FileReaderModule"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 28
    return-void
.end method

.method private getBlobModule()Lcom/facebook/react/modules/blob/BlobModule;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/FileReaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/blob/BlobModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/blob/BlobModule;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "FileReaderModule"

    return-object v0
.end method

.method public readAsDataURL(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "blob"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 61
    const-string v0, "type"

    invoke-direct {p0}, Lcom/facebook/react/modules/blob/FileReaderModule;->getBlobModule()Lcom/facebook/react/modules/blob/BlobModule;

    move-result-object v1

    .line 62
    const-string v2, "blobId"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "offset"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 64
    const-string v4, "size"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object v1

    .line 66
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 67
    const-string v0, "ERROR_INVALID_BLOB"

    const-string v2, "The specified blob is invalid"

    invoke-interface {p2, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 72
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "application/octet-stream"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    const-string v0, ";base64,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public readAsText(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "blob"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/facebook/react/modules/blob/FileReaderModule;->getBlobModule()Lcom/facebook/react/modules/blob/BlobModule;

    move-result-object v0

    .line 43
    const-string v1, "blobId"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "offset"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    const-string v3, "size"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object v0

    .line 47
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 48
    const-string v1, "ERROR_INVALID_BLOB"

    const-string v2, "The specified blob is invalid"

    invoke-interface {p3, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 53
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
