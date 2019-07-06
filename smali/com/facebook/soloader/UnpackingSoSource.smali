.class public abstract Lcom/facebook/soloader/UnpackingSoSource;
.super Lcom/facebook/soloader/DirectorySoSource;
.source "UnpackingSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/UnpackingSoSource$Unpacker;,
        Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;,
        Lcom/facebook/soloader/UnpackingSoSource$InputDso;,
        Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;,
        Lcom/facebook/soloader/UnpackingSoSource$Dso;
    }
.end annotation


# static fields
.field private static final DEPS_FILE_NAME:Ljava/lang/String; = "dso_deps"

.field private static final LOCK_FILE_NAME:Ljava/lang/String; = "dso_lock"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "dso_manifest"

.field private static final MANIFEST_VERSION:B = 0x1t

.field private static final STATE_CLEAN:B = 0x1t

.field private static final STATE_DIRTY:B = 0x0t

.field private static final STATE_FILE_NAME:Ljava/lang/String; = "dso_state"

.field private static final TAG:Ljava/lang/String; = "fb-UnpackingSoSource"


# instance fields
.field private mAbis:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected mCorruptedLib:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLibsBeingLoaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storePath"    # Ljava/io/File;

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 61
    invoke-static {p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;B)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->writeState(Ljava/io/File;B)V

    return-void
.end method

.method private deleteUnmentionedFiles([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V
    .locals 7
    .param p1, "dsos"    # [Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "existingFiles":[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 190
    aget-object v2, v0, v1

    .line 191
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "dso_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    const-string v3, "dso_lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    const-string v3, "dso_deps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    const-string v3, "dso_manifest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    goto :goto_2

    .line 198
    :cond_0
    const/4 v3, 0x0

    .line 199
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-nez v3, :cond_2

    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 200
    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    const/4 v3, 0x1

    .line 199
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v4    # "j":I
    :cond_2
    if-nez v3, :cond_3

    .line 206
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .local v4, "fileNameToDelete":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting unaccounted-for file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fb-UnpackingSoSource"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 189
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "found":Z
    .end local v4    # "fileNameToDelete":Ljava/io/File;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 186
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to list directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    .locals 8
    .param p1, "iDso"    # Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .param p2, "ioBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    const-string v0, "rw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extracting DSO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v2, v2, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb-UnpackingSoSource"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    iget-object v5, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v1, "dsoFileName":Ljava/io/File;
    const/4 v4, 0x0

    .line 221
    .local v4, "dsoFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 226
    .end local v4    # "dsoFile":Ljava/io/RandomAccessFile;
    .local v0, "dsoFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 222
    .end local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "dsoFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    .line 223
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error overwriting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " trying to delete and start over"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {v1}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 225
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 229
    .end local v4    # "dsoFile":Ljava/io/RandomAccessFile;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_1
    iget-object v2, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    .line 230
    .local v2, "dsoContent":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 231
    .local v4, "sizeHint":I
    if-le v4, v3, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/facebook/soloader/SysUtil;->fallocateIfSupported(Ljava/io/FileDescriptor;J)V

    .line 234
    :cond_0
    iget-object v5, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    const v6, 0x7fffffff

    invoke-static {v0, v5, v6, p2}, Lcom/facebook/soloader/SysUtil;->copyBytes(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    .line 235
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 236
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 243
    .end local v2    # "dsoContent":Ljava/io/InputStream;
    .end local v4    # "sizeHint":I
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 244
    nop

    .line 245
    return-void

    .line 237
    .restart local v2    # "dsoContent":Ljava/io/InputStream;
    .restart local v4    # "sizeHint":I
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot make file executable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    .end local v1    # "dsoFileName":Ljava/io/File;
    .end local p1    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .end local p2    # "ioBuffer":[B
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v2    # "dsoContent":Ljava/io/InputStream;
    .end local v4    # "sizeHint":I
    .restart local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "dsoFileName":Ljava/io/File;
    .restart local p1    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .restart local p2    # "ioBuffer":[B
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 239
    :catch_1
    move-exception v2

    .line 240
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v1}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 241
    nop

    .end local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    .end local v1    # "dsoFileName":Ljava/io/File;
    .end local p1    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .end local p2    # "ioBuffer":[B
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "dsoFileName":Ljava/io/File;
    .restart local p1    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .restart local p2    # "ioBuffer":[B
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 244
    throw v2

    .line 216
    .end local v0    # "dsoFile":Ljava/io/RandomAccessFile;
    .end local v1    # "dsoFileName":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot make directory writable for us: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLibraryLock(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "soName"    # Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "lock":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 440
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v1, v2

    .line 441
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    monitor-exit v0

    return-object v1

    .line 444
    .end local v1    # "lock":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private refreshLocked(Lcom/facebook/soloader/FileLocker;I[B)Z
    .locals 15
    .param p1, "lock"    # Lcom/facebook/soloader/FileLocker;
    .param p2, "flags"    # I
    .param p3, "deps"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    move-object v8, p0

    const-string v1, "fb-UnpackingSoSource"

    new-instance v0, Ljava/io/File;

    iget-object v2, v8, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v3, "dso_state"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 293
    .local v9, "stateFileName":Ljava/io/File;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v9, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 295
    .local v3, "stateFile":Ljava/io/RandomAccessFile;
    const/4 v10, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 296
    .local v0, "state":B
    if-eq v0, v10, :cond_0

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dso store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " regeneration interrupted: wiping clean"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    const/4 v0, 0x0

    .line 302
    :cond_0
    move v5, v0

    goto :goto_2

    .line 303
    .end local v0    # "state":B
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    move-object v4, v0

    .end local v3    # "stateFile":Ljava/io/RandomAccessFile;
    .end local v9    # "stateFileName":Ljava/io/File;
    .end local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .end local p2    # "flags":I
    .end local p3    # "deps":[B
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .restart local v3    # "stateFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "stateFileName":Ljava/io/File;
    .restart local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .restart local p2    # "flags":I
    .restart local p3    # "deps":[B
    :goto_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw v1

    .line 300
    :catch_2
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/io/EOFException;
    const/4 v0, 0x0

    move v5, v0

    .line 303
    .end local v0    # "ex":Ljava/io/EOFException;
    .local v5, "state":B
    :goto_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 305
    .end local v3    # "stateFile":Ljava/io/RandomAccessFile;
    new-instance v0, Ljava/io/File;

    iget-object v3, v8, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v6, "dso_deps"

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v0

    .line 306
    .local v11, "depsFileName":Ljava/io/File;
    const/4 v3, 0x0

    .line 307
    .local v3, "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v11, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 308
    .local v2, "depsFile":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B

    move-object v6, v0

    .line 309
    .local v6, "existingDeps":[B
    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    array-length v7, v6

    if-eq v0, v7, :cond_2

    .line 310
    const-string v0, "short read of so store deps file: marking unclean"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 311
    const/4 v5, 0x0

    .line 314
    :cond_2
    move-object/from16 v12, p3

    :try_start_4
    invoke-static {v6, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    const-string v0, "deps mismatch on deps store: regenerating"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 316
    const/4 v0, 0x0

    move v13, v0

    .end local v5    # "state":B
    .local v0, "state":B
    goto :goto_3

    .line 314
    .end local v0    # "state":B
    .restart local v5    # "state":B
    :cond_3
    move v13, v5

    .line 319
    .end local v5    # "state":B
    .local v13, "state":B
    :goto_3
    const/4 v0, 0x0

    if-eqz v13, :cond_5

    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v14, v3

    goto :goto_5

    .line 320
    :cond_5
    :goto_4
    :try_start_5
    const-string v5, "so store dirty: regenerating"

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {v9, v0}, Lcom/facebook/soloader/UnpackingSoSource;->writeState(Ljava/io/File;B)V

    .line 323
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 324
    .local v1, "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    :try_start_6
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v5

    move-object v3, v5

    .line 325
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->openDsoIterator()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 326
    .local v5, "idi":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :try_start_7
    invoke-direct {p0, v13, v3, v5}, Lcom/facebook/soloader/UnpackingSoSource;->regenerate(BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 327
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 328
    .end local v5    # "idi":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :cond_6
    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 330
    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .end local v6    # "existingDeps":[B
    :cond_7
    move-object v14, v3

    .end local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .local v14, "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    :goto_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 332
    .end local v2    # "depsFile":Ljava/io/RandomAccessFile;
    if-nez v14, :cond_8

    .line 333
    return v0

    .line 336
    :cond_8
    move-object v5, v14

    .line 338
    .local v5, "manifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/soloader/UnpackingSoSource$1;-><init>(Lcom/facebook/soloader/UnpackingSoSource;Ljava/io/File;[BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Ljava/io/File;Lcom/facebook/soloader/FileLocker;)V

    .line 374
    .local v0, "syncer":Ljava/lang/Runnable;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_9

    .line 375
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_6

    .line 377
    :cond_9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 380
    :goto_6
    return v10

    .line 327
    .end local v0    # "syncer":Ljava/lang/Runnable;
    .end local v14    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .restart local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .local v5, "idi":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .restart local v6    # "existingDeps":[B
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v10, v4

    goto :goto_7

    .line 325
    :catch_3
    move-exception v0

    move-object v7, v0

    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .end local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .end local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v5    # "idi":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .end local v6    # "existingDeps":[B
    .end local v9    # "stateFileName":Ljava/io/File;
    .end local v11    # "depsFileName":Ljava/io/File;
    .end local v13    # "state":B
    .end local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .end local p2    # "flags":I
    .end local p3    # "deps":[B
    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 327
    .restart local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .restart local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v5    # "idi":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .restart local v6    # "existingDeps":[B
    .restart local v9    # "stateFileName":Ljava/io/File;
    .restart local v11    # "depsFileName":Ljava/io/File;
    .restart local v13    # "state":B
    .restart local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .restart local p2    # "flags":I
    .restart local p3    # "deps":[B
    :catchall_2
    move-exception v0

    move-object v10, v7

    move-object v7, v0

    :goto_7
    if-eqz v5, :cond_b

    if-eqz v10, :cond_a

    :try_start_b
    invoke-virtual {v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v14, v0

    :try_start_c
    invoke-virtual {v10, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V

    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .end local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .end local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v6    # "existingDeps":[B
    .end local v9    # "stateFileName":Ljava/io/File;
    .end local v11    # "depsFileName":Ljava/io/File;
    .end local v13    # "state":B
    .end local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .end local p2    # "flags":I
    .end local p3    # "deps":[B
    :cond_b
    :goto_8
    throw v7
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 328
    .end local v5    # "idi":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .restart local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .restart local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v6    # "existingDeps":[B
    .restart local v9    # "stateFileName":Ljava/io/File;
    .restart local v11    # "depsFileName":Ljava/io/File;
    .restart local v13    # "state":B
    .restart local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .restart local p2    # "flags":I
    .restart local p3    # "deps":[B
    :catchall_3
    move-exception v0

    move-object v7, v3

    move-object v5, v4

    move-object v3, v0

    goto :goto_9

    .line 323
    :catch_5
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .end local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .end local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v6    # "existingDeps":[B
    .end local v9    # "stateFileName":Ljava/io/File;
    .end local v11    # "depsFileName":Ljava/io/File;
    .end local v13    # "state":B
    .end local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .end local p2    # "flags":I
    .end local p3    # "deps":[B
    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 328
    .restart local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .restart local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .local v5, "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v6    # "existingDeps":[B
    .restart local v9    # "stateFileName":Ljava/io/File;
    .restart local v11    # "depsFileName":Ljava/io/File;
    .restart local v13    # "state":B
    .restart local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .restart local p2    # "flags":I
    .restart local p3    # "deps":[B
    :catchall_4
    move-exception v0

    move-object v7, v5

    move-object v5, v3

    move-object v3, v0

    .end local v5    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .local v7, "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    :goto_9
    if-eqz v1, :cond_d

    if-eqz v5, :cond_c

    :try_start_e
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v10, v0

    :try_start_f
    invoke-virtual {v5, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    .end local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .end local v7    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v9    # "stateFileName":Ljava/io/File;
    .end local v11    # "depsFileName":Ljava/io/File;
    .end local v13    # "state":B
    .end local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .end local p2    # "flags":I
    .end local p3    # "deps":[B
    :cond_d
    :goto_a
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 330
    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .end local v6    # "existingDeps":[B
    .restart local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v9    # "stateFileName":Ljava/io/File;
    .restart local v11    # "depsFileName":Ljava/io/File;
    .restart local v13    # "state":B
    .restart local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .restart local p2    # "flags":I
    .restart local p3    # "deps":[B
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    move v5, v13

    goto :goto_e

    .line 307
    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v3, v7

    move v5, v13

    goto :goto_d

    .line 330
    .end local v7    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    :catchall_6
    move-exception v0

    move-object v1, v0

    move v5, v13

    goto :goto_e

    .line 307
    :catch_8
    move-exception v0

    move-object v4, v0

    move v5, v13

    goto :goto_d

    .end local v13    # "state":B
    .local v5, "state":B
    :catch_9
    move-exception v0

    goto :goto_c

    .line 330
    :catchall_7
    move-exception v0

    move-object/from16 v12, p3

    :goto_b
    move-object v1, v0

    goto :goto_e

    .line 307
    :catch_a
    move-exception v0

    move-object/from16 v12, p3

    :goto_c
    move-object v4, v0

    .end local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .end local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v5    # "state":B
    .end local v9    # "stateFileName":Ljava/io/File;
    .end local v11    # "depsFileName":Ljava/io/File;
    .end local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .end local p2    # "flags":I
    .end local p3    # "deps":[B
    :goto_d
    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 330
    .restart local v2    # "depsFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v5    # "state":B
    .restart local v9    # "stateFileName":Ljava/io/File;
    .restart local v11    # "depsFileName":Ljava/io/File;
    .restart local p1    # "lock":Lcom/facebook/soloader/FileLocker;
    .restart local p2    # "flags":I
    .restart local p3    # "deps":[B
    :catchall_8
    move-exception v0

    goto :goto_b

    :goto_e
    if-eqz v4, :cond_e

    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :goto_f
    throw v1

    return-void
.end method

.method private regenerate(BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;)V
    .locals 12
    .param p1, "state"    # B
    .param p2, "desiredManifest"    # Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .param p3, "dsoIterator"    # Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regenerating DSO store "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb-UnpackingSoSource"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v3, "dso_manifest"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v0, "manifestFileName":Ljava/io/File;
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v2, "manifestFile":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 255
    .local v3, "existingManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v4, :cond_0

    .line 257
    :try_start_0
    invoke-static {v2}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->read(Ljava/io/DataInput;)Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 260
    goto :goto_0

    .line 283
    .end local v3    # "existingManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 253
    :catch_0
    move-exception v1

    move-object v5, v1

    goto/16 :goto_7

    .line 258
    .restart local v3    # "existingManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    :catch_1
    move-exception v4

    .line 259
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "error reading existing DSO manifest"

    invoke-static {v1, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 264
    new-instance v4, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-direct {v4, v6}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    move-object v3, v4

    .line 267
    :cond_1
    iget-object v4, p2, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-direct {p0, v4}, Lcom/facebook/soloader/UnpackingSoSource;->deleteUnmentionedFiles([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    .line 268
    const v4, 0x8000

    new-array v4, v4, [B

    .line 269
    .local v4, "ioBuffer":[B
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 270
    invoke-virtual {p3}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->next()Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .local v6, "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    const/4 v7, 0x1

    .line 272
    .local v7, "obsolete":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-eqz v7, :cond_4

    :try_start_2
    iget-object v9, v3, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 273
    iget-object v9, v3, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    iget-object v10, v6, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v10, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v3, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    iget-object v10, v6, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v10, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    .line 274
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 275
    const/4 v7, 0x0

    .line 272
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 281
    .end local v7    # "obsolete":Z
    .end local v8    # "i":I
    :catchall_1
    move-exception v1

    move-object v7, v5

    goto :goto_4

    .line 270
    :catch_2
    move-exception v1

    goto :goto_3

    .line 278
    .restart local v7    # "obsolete":Z
    :cond_4
    if-eqz v7, :cond_7

    .line 279
    invoke-direct {p0, v6, v4}, Lcom/facebook/soloader/UnpackingSoSource;->extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 270
    .end local v0    # "manifestFileName":Ljava/io/File;
    .end local v2    # "manifestFile":Ljava/io/RandomAccessFile;
    .end local v3    # "existingManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v4    # "ioBuffer":[B
    .end local v6    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .end local v7    # "obsolete":Z
    .end local p1    # "state":B
    .end local p2    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local p3    # "dsoIterator":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 281
    .restart local v0    # "manifestFileName":Ljava/io/File;
    .restart local v2    # "manifestFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "existingManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local v4    # "ioBuffer":[B
    .restart local v6    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .restart local p1    # "state":B
    .restart local p2    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local p3    # "dsoIterator":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :catchall_2
    move-exception v7

    move-object v11, v7

    move-object v7, v1

    move-object v1, v11

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v8

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V

    .end local v0    # "manifestFileName":Ljava/io/File;
    .end local v2    # "manifestFile":Ljava/io/RandomAccessFile;
    .end local p1    # "state":B
    .end local p2    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local p3    # "dsoIterator":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :cond_6
    :goto_5
    throw v1

    .restart local v0    # "manifestFileName":Ljava/io/File;
    .restart local v2    # "manifestFile":Ljava/io/RandomAccessFile;
    .restart local p1    # "state":B
    .restart local p2    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local p3    # "dsoIterator":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :cond_7
    :goto_6
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 283
    .end local v3    # "existingManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local v4    # "ioBuffer":[B
    .end local v6    # "iDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    :cond_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 284
    .end local v2    # "manifestFile":Ljava/io/RandomAccessFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished regenerating DSO store "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 253
    .end local v0    # "manifestFileName":Ljava/io/File;
    .end local p1    # "state":B
    .end local p2    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .end local p3    # "dsoIterator":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :goto_7
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 283
    .restart local v0    # "manifestFileName":Ljava/io/File;
    .restart local v2    # "manifestFile":Ljava/io/RandomAccessFile;
    .restart local p1    # "state":B
    .restart local p2    # "desiredManifest":Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .restart local p3    # "dsoIterator":Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :goto_8
    if-eqz v5, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    :catch_4
    move-exception v3

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :goto_9
    throw v1

    return-void
.end method

.method private static writeState(Ljava/io/File;B)V
    .locals 4
    .param p0, "stateFileName"    # Ljava/io/File;
    .param p1, "state"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v0, "stateFile":Ljava/io/RandomAccessFile;
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 175
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 176
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 178
    .end local v0    # "stateFile":Ljava/io/RandomAccessFile;
    return-void

    .line 177
    .restart local v0    # "stateFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    move-object v3, v1

    .end local v0    # "stateFile":Ljava/io/RandomAccessFile;
    .end local p0    # "stateFileName":Ljava/io/File;
    .end local p1    # "state":B
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .restart local v0    # "stateFile":Ljava/io/RandomAccessFile;
    .restart local p0    # "stateFileName":Ljava/io/File;
    .restart local p1    # "state":B
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw v1
.end method


# virtual methods
.method protected getDepsBlock()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v1

    .line 397
    .local v1, "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    .line 398
    .local v3, "dsos":[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 399
    array-length v4, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 401
    aget-object v5, v3, v4

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    aget-object v5, v3, v4

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 404
    .end local v3    # "dsos":[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .end local v4    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    .line 405
    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 406
    .local v1, "depsBlock":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    return-object v1

    .line 404
    .local v1, "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 396
    :catch_0
    move-exception v2

    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    .restart local v0    # "parcel":Landroid/os/Parcel;
    .restart local v1    # "u":Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    :cond_3
    :goto_2
    throw v3

    return-void
.end method

.method public getSoSourceAbis()[Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mAbis:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Lcom/facebook/soloader/DirectorySoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I
    .param p3, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-direct {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->getLibraryLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, "lock":Ljava/lang/Object;
    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/facebook/soloader/UnpackingSoSource;->loadLibraryFrom(Ljava/lang/String;ILjava/io/File;Landroid/os/StrictMode$ThreadPolicy;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected prepare(I)V
    .locals 8
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    const-string v0, "releasing dso store lock for "

    const-string v1, " (syncer thread started)"

    const-string v2, "not releasing dso store lock for "

    const-string v3, "fb-UnpackingSoSource"

    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->mkdirOrThrow(Ljava/io/File;)V

    .line 416
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v6, "dso_lock"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    .local v4, "lockFileName":Ljava/io/File;
    invoke-static {v4}, Lcom/facebook/soloader/FileLocker;->lock(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v5

    .line 419
    .local v5, "lock":Lcom/facebook/soloader/FileLocker;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locked dso store "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->getDepsBlock()[B

    move-result-object v6

    invoke-direct {p0, v5, p1, v6}, Lcom/facebook/soloader/UnpackingSoSource;->refreshLocked(Lcom/facebook/soloader/FileLocker;I[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    const/4 v5, 0x0

    goto :goto_0

    .line 423
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dso store is up-to-date: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :goto_0
    if-eqz v5, :cond_1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v5}, Lcom/facebook/soloader/FileLocker;->close()V

    goto :goto_1

    .line 430
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    nop

    .line 434
    :goto_1
    return-void

    .line 426
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_2

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v5}, Lcom/facebook/soloader/FileLocker;->close()V

    goto :goto_2

    .line 430
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_2
    throw v6
.end method

.method protected declared-synchronized prepare(Ljava/lang/String;)V
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->getLibraryLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    .local v0, "lock":Ljava/lang/Object;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 453
    :try_start_1
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mCorruptedLib:Ljava/lang/String;

    .line 454
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(I)V

    .line 455
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 449
    .end local v0    # "lock":Ljava/lang/Object;
    .end local p1    # "soName":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public setSoSourceAbis([Ljava/lang/String;)V
    .locals 0
    .param p1, "abis"    # [Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mAbis:[Ljava/lang/String;

    .line 87
    return-void
.end method
