.class Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "CameraRollManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/camera/CameraRollManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetMediaTask"
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
.field private final mAfter:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAssetType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFirst:I

.field private final mGroupName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMimeTypes:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPromise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/ReactContext;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "first"    # I
    .param p3, "after"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "groupName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mimeTypes"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "assetType"    # Ljava/lang/String;
    .param p7, "promise"    # Lcom/facebook/react/bridge/Promise;

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 253
    iput-object p1, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mContext:Landroid/content/Context;

    .line 254
    iput p2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mFirst:I

    .line 255
    iput-object p3, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAfter:Ljava/lang/String;

    .line 256
    iput-object p4, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mGroupName:Ljava/lang/String;

    .line 257
    iput-object p5, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mMimeTypes:Lcom/facebook/react/bridge/ReadableArray;

    .line 258
    iput-object p7, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 259
    iput-object p6, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAssetType:Ljava/lang/String;

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/ReactContext;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/modules/camera/CameraRollManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/facebook/react/bridge/Promise;
    .param p8, "x7"    # Lcom/facebook/react/modules/camera/CameraRollManager$1;

    .line 235
    invoke-direct/range {p0 .. p7}, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;-><init>(Lcom/facebook/react/bridge/ReactContext;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAfter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const-string v2, " AND datetaken < ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAfter:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mGroupName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    const-string v2, " AND bucket_display_name = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mGroupName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAssetType:Ljava/lang/String;

    const-string v3, "Photos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    const-string v2, " AND media_type = 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAssetType:Ljava/lang/String;

    const-string v4, "Videos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    const-string v2, " AND media_type = 3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    :cond_3
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAssetType:Ljava/lang/String;

    const-string v5, "All"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    const-string v2, " AND media_type IN (3,1)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mMimeTypes:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 296
    const-string v2, " AND mime_type IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mMimeTypes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 298
    const-string v3, "?,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v3, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mMimeTypes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ")"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_5
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 304
    .local v2, "response":Lcom/facebook/react/bridge/WritableMap;
    iget-object v3, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 309
    .local v3, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "external"

    .line 310
    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 311
    invoke-static {}, Lcom/facebook/react/modules/camera/CameraRollManager;->access$200()[Ljava/lang/String;

    move-result-object v6

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "datetaken DESC, date_modified DESC LIMIT "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mFirst:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 309
    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 316
    .local v4, "media":Landroid/database/Cursor;
    if-nez v4, :cond_6

    .line 317
    iget-object v5, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v6, "E_UNABLE_TO_LOAD"

    const-string v7, "Could not get media"

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 320
    :cond_6
    :try_start_1
    iget v5, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mFirst:I

    invoke-static {v3, v4, v2, v5}, Lcom/facebook/react/modules/camera/CameraRollManager;->access$300(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V

    .line 321
    iget v5, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mFirst:I

    invoke-static {v4, v2, v5}, Lcom/facebook/react/modules/camera/CameraRollManager;->access$400(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 324
    iget-object v5, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v5, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 325
    nop

    .line 332
    .end local v4    # "media":Landroid/database/Cursor;
    :goto_2
    goto :goto_3

    .line 323
    .restart local v4    # "media":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 324
    iget-object v6, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v6, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 325
    nop

    .end local v0    # "selection":Ljava/lang/StringBuilder;
    .end local v1    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "response":Lcom/facebook/react/bridge/WritableMap;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "params":[Ljava/lang/Void;
    throw v5
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    .end local v4    # "media":Landroid/database/Cursor;
    .restart local v0    # "selection":Ljava/lang/StringBuilder;
    .restart local v1    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "response":Lcom/facebook/react/bridge/WritableMap;
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_0
    move-exception v4

    .line 328
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v6, "E_UNABLE_TO_LOAD_PERMISSION"

    const-string v7, "Could not get media: need READ_EXTERNAL_STORAGE permission"

    invoke-interface {v5, v6, v7, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_3
    return-void

    .line 286
    .end local v2    # "response":Lcom/facebook/react/bridge/WritableMap;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_7
    iget-object v2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filter option: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->mAssetType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'. Expected one of \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' or \'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "E_UNABLE_TO_FILTER"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method
