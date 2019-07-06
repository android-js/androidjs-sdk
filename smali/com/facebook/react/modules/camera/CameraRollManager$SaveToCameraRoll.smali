.class Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "CameraRollManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/camera/CameraRollManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToCameraRoll"
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
.field private final mContext:Landroid/content/Context;

.field private final mPromise:Lcom/facebook/react/bridge/Promise;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;

    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 117
    iput-object p1, p0, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mUri:Landroid/net/Uri;

    .line 119
    iput-object p3, p0, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;)Lcom/facebook/react/bridge/Promise;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;

    .line 109
    iget-object v0, p0, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 23
    .param p1, "params"    # [Ljava/lang/Void;

    .line 124
    move-object/from16 v1, p0

    const-string v2, "Could not close output channel"

    const-string v3, "Could not close input channel"

    const-string v4, "ReactNative"

    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 125
    .local v5, "source":Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "input":Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 127
    .local v7, "output":Ljava/nio/channels/FileChannel;
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 128
    .local v8, "exportDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 129
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, v1, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v9, "E_UNABLE_TO_LOAD"

    const-string v10, "External media storage directory not available"

    invoke-interface {v0, v9, v10}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 133
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v0, "dest":Ljava/io/File;
    const/4 v9, 0x0

    .line 135
    .local v9, "n":I
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "fullSourceName":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, 0x0

    if-ltz v12, :cond_3

    .line 138
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, "sourceName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "sourceExt":Ljava/lang/String;
    goto :goto_2

    .line 141
    .end local v11    # "sourceExt":Ljava/lang/String;
    .end local v12    # "sourceName":Ljava/lang/String;
    :cond_3
    move-object v12, v10

    .line 142
    .restart local v12    # "sourceName":Ljava/lang/String;
    const-string v11, ""

    .line 144
    .restart local v11    # "sourceExt":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-nez v14, :cond_4

    .line 145
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "n":I
    .local v13, "n":I
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v14

    move v9, v13

    const/4 v13, 0x0

    goto :goto_2

    .line 147
    .end local v13    # "n":I
    .restart local v9    # "n":I
    :cond_4
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    move-object v6, v13

    .line 148
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    move-object v7, v13

    .line 149
    const-wide/16 v19, 0x0

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v21

    move-object/from16 v17, v7

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v22}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 150
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 153
    iget-object v13, v1, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    new-instance v15, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll$1;

    invoke-direct {v15, v1}, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll$1;-><init>(Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;)V

    .line 153
    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "dest":Ljava/io/File;
    .local v17, "dest":Ljava/io/File;
    invoke-static {v13, v14, v0, v15}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .end local v8    # "exportDir":Ljava/io/File;
    .end local v9    # "n":I
    .end local v10    # "fullSourceName":Ljava/lang/String;
    .end local v11    # "sourceExt":Ljava/lang/String;
    .end local v12    # "sourceName":Ljava/lang/String;
    .end local v17    # "dest":Ljava/io/File;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 175
    goto :goto_3

    .line 173
    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 182
    :goto_4
    goto :goto_6

    .line 180
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 170
    :catchall_0
    move-exception v0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_7

    .line 167
    :catch_4
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    iget-object v8, v1, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v8, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 175
    goto :goto_5

    .line 173
    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 174
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 185
    :cond_7
    :goto_6
    return-void

    .line 170
    .end local v6    # "input":Ljava/nio/channels/FileChannel;
    .local v7, "input":Ljava/nio/channels/FileChannel;
    .local v8, "output":Ljava/nio/channels/FileChannel;
    :goto_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    :try_start_9
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 175
    goto :goto_8

    .line 173
    :catch_6
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 174
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :goto_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    :try_start_a
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 182
    goto :goto_9

    .line 180
    :catch_7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_9
    throw v6

    return-void
.end method
