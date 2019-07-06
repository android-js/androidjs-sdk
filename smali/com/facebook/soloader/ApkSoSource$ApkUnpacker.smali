.class public Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;
.super Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.source "ApkSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ApkSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApkUnpacker"
.end annotation


# instance fields
.field private final mFlags:I

.field private mLibDir:Ljava/io/File;

.field final synthetic this$0:Lcom/facebook/soloader/ApkSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ApkSoSource;Lcom/facebook/soloader/ExtractFromZipSoSource;)V
    .locals 2
    .param p1, "this$0"    # Lcom/facebook/soloader/ApkSoSource;
    .param p2, "soSource"    # Lcom/facebook/soloader/ExtractFromZipSoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/ApkSoSource;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/soloader/ApkSoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    .line 74
    invoke-static {p1}, Lcom/facebook/soloader/ApkSoSource;->access$000(Lcom/facebook/soloader/ApkSoSource;)I

    move-result v0

    iput v0, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mFlags:I

    .line 75
    return-void
.end method


# virtual methods
.method protected shouldExtract(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 10
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .param p2, "soName"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "zipPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/ApkSoSource;

    iget-object v1, v1, Lcom/facebook/soloader/ApkSoSource;->mCorruptedLib:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/ApkSoSource;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/facebook/soloader/ApkSoSource;->mCorruptedLib:Ljava/lang/String;

    .line 84
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string v2, "allowing consideration of corrupted lib %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    move v3, v2

    move-object v2, v1

    .local v2, "result":Z
    goto/16 :goto_0

    .line 86
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_0
    iget v1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mFlags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowing consideration of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": self-extraction preferred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1    # "msg":Ljava/lang/String;
    const/4 v2, 0x1

    move v3, v2

    move-object v2, v1

    .restart local v2    # "result":Z
    goto :goto_0

    .line 90
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v1, "sysLibFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_2

    .line 92
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p2, v4, v3

    .line 93
    const-string v2, "allowing considering of %s: %s not in system lib dir"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "msg":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "result":Z
    goto :goto_0

    .line 97
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 98
    .local v6, "sysLibLength":J
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    .line 100
    .local v8, "apkLibLength":J
    cmp-long v4, v6, v8

    if-eqz v4, :cond_3

    .line 101
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 105
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    .line 102
    const-string v2, "allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "msg":Ljava/lang/String;
    const/4 v3, 0x1

    .restart local v3    # "result":Z
    goto :goto_0

    .line 108
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not allowing consideration of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": deferring to libdir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2    # "msg":Ljava/lang/String;
    const/4 v1, 0x0

    move v3, v1

    .line 113
    .end local v1    # "sysLibFile":Ljava/io/File;
    .end local v6    # "sysLibLength":J
    .end local v8    # "apkLibLength":J
    .restart local v3    # "result":Z
    :goto_0
    const-string v1, "ApkSoSource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v3
.end method
