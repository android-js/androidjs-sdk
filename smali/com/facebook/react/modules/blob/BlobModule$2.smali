.class Lcom/facebook/react/modules/blob/BlobModule$2;
.super Ljava/lang/Object;
.source "BlobModule.java"

# interfaces
.implements Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/blob/BlobModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/blob/BlobModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/blob/BlobModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/blob/BlobModule;

    .line 78
    iput-object p1, p0, Lcom/facebook/react/modules/blob/BlobModule$2;->this$0:Lcom/facebook/react/modules/blob/BlobModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule$2;->this$0:Lcom/facebook/react/modules/blob/BlobModule;

    invoke-static {v0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->access$000(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)[B

    move-result-object v0

    .line 91
    .local v0, "data":[B
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 92
    .local v1, "blob":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule$2;->this$0:Lcom/facebook/react/modules/blob/BlobModule;

    invoke-virtual {v2, v0}, Lcom/facebook/react/modules/blob/BlobModule;->store([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "blobId"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "offset"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 94
    array-length v2, v0

    const-string v3, "size"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 95
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule$2;->this$0:Lcom/facebook/react/modules/blob/BlobModule;

    invoke-static {v2, p1}, Lcom/facebook/react/modules/blob/BlobModule;->access$100(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule$2;->this$0:Lcom/facebook/react/modules/blob/BlobModule;

    invoke-static {v2, p1}, Lcom/facebook/react/modules/blob/BlobModule;->access$200(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule$2;->this$0:Lcom/facebook/react/modules/blob/BlobModule;

    invoke-static {v2, p1}, Lcom/facebook/react/modules/blob/BlobModule;->access$300(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)J

    move-result-wide v2

    long-to-double v2, v2

    const-string v4, "lastModified"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 101
    return-object v1
.end method

.method public supports(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "responseType"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 84
    .local v1, "isRemote":Z
    :goto_1
    if-nez v1, :cond_2

    const-string v4, "blob"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
