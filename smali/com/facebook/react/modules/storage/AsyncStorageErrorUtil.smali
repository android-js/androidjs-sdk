.class public Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;
.super Ljava/lang/Object;
.source "AsyncStorageErrorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDBError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    const-string v0, "Database Error"

    invoke-static {p0, v0}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method static getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 25
    .local v0, "errorMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    if-eqz p0, :cond_0

    .line 27
    const-string v1, "key"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-object v0
.end method

.method static getInvalidKeyError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    const-string v0, "Invalid key"

    invoke-static {p0, v0}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method static getInvalidValueError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    const-string v0, "Invalid Value"

    invoke-static {p0, v0}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
