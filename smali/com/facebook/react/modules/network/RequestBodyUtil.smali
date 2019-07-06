.class Lcom/facebook/react/modules/network/RequestBodyUtil;
.super Ljava/lang/Object;
.source "RequestBodyUtil.java"


# static fields
.field private static final CONTENT_ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final NAME:Ljava/lang/String; = "RequestBodyUtil"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = "temp"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;
    .locals 1
    .param p0, "mediaType"    # Lokhttp3/MediaType;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 121
    new-instance v0, Lcom/facebook/react/modules/network/RequestBodyUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/modules/network/RequestBodyUtil$1;-><init>(Lokhttp3/MediaType;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createGzip(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 3
    .param p0, "mediaType"    # Lokhttp3/MediaType;
    .param p1, "body"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, "gzipByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .local v1, "gzipOutputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 110
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "gzipOutputStream":Ljava/io/OutputStream;
    nop

    .line 114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    return-object v1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static createProgressRequest(Lokhttp3/RequestBody;Lcom/facebook/react/modules/network/ProgressListener;)Lcom/facebook/react/modules/network/ProgressRequestBody;
    .locals 1
    .param p0, "requestBody"    # Lokhttp3/RequestBody;
    .param p1, "listener"    # Lcom/facebook/react/modules/network/ProgressListener;

    .line 155
    new-instance v0, Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/modules/network/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/facebook/react/modules/network/ProgressListener;)V

    return-object v0
.end method

.method private static getDownloadFileInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "outputDir":Ljava/io/File;
    const-string v1, "RequestBodyUtil"

    const-string v2, "temp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 82
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 84
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 87
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    .local v5, "channel":Ljava/nio/channels/ReadableByteChannel;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v4

    .line 91
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 92
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :try_start_4
    invoke-interface {v5}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 92
    return-object v4

    .line 94
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 95
    nop

    .end local v0    # "outputDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 97
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-interface {v5}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 98
    nop

    .end local v0    # "outputDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 100
    .end local v5    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .restart local v0    # "outputDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 101
    throw v4
.end method

.method public static getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 2
    .param p0, "method"    # Ljava/lang/String;

    .line 162
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    return-object v1

    .line 163
    :cond_1
    :goto_0
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileContentUriStr"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 59
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "fileContentUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p0, v0}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getDownloadFileInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    .end local v0    # "fileContentUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve file for contentUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isGzipEncoding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "encodingType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    const-string v0, "gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
