.class Lcom/facebook/react/modules/image/ImageLoaderModule$3;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "ImageLoaderModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/image/ImageLoaderModule;->queryCache(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/image/ImageLoaderModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$uris:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/image/ImageLoaderModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/image/ImageLoaderModule;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 185
    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->this$0:Lcom/facebook/react/modules/image/ImageLoaderModule;

    iput-object p3, p0, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->val$uris:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p4, p0, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 188
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 189
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    .line 190
    .local v1, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->val$uris:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->val$uris:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 193
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    const-string v5, "memory"

    invoke-interface {v0, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {v1, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    const-string v5, "disk"

    invoke-interface {v0, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v3    # "uriString":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/modules/image/ImageLoaderModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 200
    return-void
.end method
