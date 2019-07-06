.class public Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
.super Ljava/lang/Object;
.source "BundleDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/BundleDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundleInfo"
.end annotation


# instance fields
.field private mDeltaClientName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFilesChangedCount:I

.field private mUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mDeltaClientName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mFilesChangedCount:I

    return p1
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    .locals 5
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 56
    return-object v0

    .line 59
    :cond_0
    new-instance v1, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    invoke-direct {v1}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;-><init>()V

    .line 62
    .local v1, "info":Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "deltaClient"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mDeltaClientName:Ljava/lang/String;

    .line 64
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mUrl:Ljava/lang/String;

    .line 65
    const-string v3, "filesChangedCount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mFilesChangedCount:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "obj":Lorg/json/JSONObject;
    nop

    .line 71
    return-object v1

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "BundleDownloader"

    const-string v4, "Invalid bundle info: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-object v0
.end method


# virtual methods
.method public getDeltaClient()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mDeltaClientName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesChangedCount()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mFilesChangedCount:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "deltaClient"

    iget-object v2, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mDeltaClientName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "url"

    iget-object v2, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "filesChangedCount"

    iget v2, p0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;->mFilesChangedCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "BundleDownloader"

    const-string v3, "Can\'t serialize bundle info: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v2, 0x0

    return-object v2
.end method
