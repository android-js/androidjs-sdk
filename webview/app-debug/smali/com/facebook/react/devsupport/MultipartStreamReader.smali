.class public Lcom/facebook/react/devsupport/MultipartStreamReader;
.super Ljava/lang/Object;
.source "MultipartStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;
    }
.end annotation


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"


# instance fields
.field private final mBoundary:Ljava/lang/String;

.field private mLastProgressEvent:J

.field private final mSource:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "boundary"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/react/devsupport/MultipartStreamReader;->mSource:Lokio/BufferedSource;

    .line 43
    iput-object p2, p0, Lcom/facebook/react/devsupport/MultipartStreamReader;->mBoundary:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private emitChunk(Lokio/Buffer;ZLcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)V
    .locals 7
    .param p1, "chunk"    # Lokio/Buffer;
    .param p2, "done"    # Z
    .param p3, "listener"    # Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const-string v0, "\r\n\r\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    .line 67
    .local v0, "marker":Lokio/ByteString;
    invoke-virtual {p1, v0}, Lokio/Buffer;->indexOf(Lokio/ByteString;)J

    move-result-wide v1

    .line 68
    .local v1, "indexOfMarker":J
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 69
    const/4 v3, 0x0

    invoke-interface {p3, v3, p1, p2}, Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;->onChunkComplete(Ljava/util/Map;Lokio/Buffer;Z)V

    goto :goto_0

    .line 71
    :cond_0
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 72
    .local v3, "headers":Lokio/Buffer;
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 73
    .local v4, "body":Lokio/Buffer;
    invoke-virtual {p1, v3, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 74
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 75
    invoke-virtual {p1, v4}, Lokio/Buffer;->readAll(Lokio/Sink;)J

    .line 76
    invoke-direct {p0, v3}, Lcom/facebook/react/devsupport/MultipartStreamReader;->parseHeaders(Lokio/Buffer;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {p3, v5, v4, p2}, Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;->onChunkComplete(Ljava/util/Map;Lokio/Buffer;Z)V

    .line 78
    .end local v3    # "headers":Lokio/Buffer;
    .end local v4    # "body":Lokio/Buffer;
    :goto_0
    return-void
.end method

.method private emitProgress(Ljava/util/Map;JZLcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)V
    .locals 10
    .param p2, "contentLength"    # J
    .param p4, "isFinal"    # Z
    .param p5, "listener"    # Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ",
            "Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    if-nez p5, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/facebook/react/devsupport/MultipartStreamReader;->mLastProgressEvent:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    if-eqz p4, :cond_3

    .line 87
    :cond_1
    iput-wide v0, p0, Lcom/facebook/react/devsupport/MultipartStreamReader;->mLastProgressEvent:J

    .line 88
    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v8, v2

    .line 89
    .local v8, "headersContentLength":J
    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;->onChunkProgress(Ljava/util/Map;JJ)V

    .line 91
    .end local v8    # "headersContentLength":J
    :cond_3
    return-void

    .line 82
    .end local v0    # "currentTime":J
    :cond_4
    :goto_1
    return-void
.end method

.method private parseHeaders(Lokio/Buffer;)Ljava/util/Map;
    .locals 10
    .param p1, "data"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Buffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "text":Ljava/lang/String;
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "lines":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 52
    .local v6, "line":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 53
    .local v7, "indexOfSeparator":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 54
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "key":Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "value":Ljava/lang/String;
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "indexOfSeparator":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method


# virtual methods
.method public readAllParts(Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)Z
    .locals 32
    .param p1, "listener"    # Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/facebook/react/devsupport/MultipartStreamReader;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    .line 100
    .local v7, "delimiter":Lokio/ByteString;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/facebook/react/devsupport/MultipartStreamReader;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v8

    .line 101
    .local v8, "closeDelimiter":Lokio/ByteString;
    const-string v0, "\r\n\r\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v9

    .line 103
    .local v9, "headersDelimiter":Lokio/ByteString;
    const/16 v10, 0x1000

    .line 104
    .local v10, "bufferLen":I
    const-wide/16 v0, 0x0

    .line 105
    .local v0, "chunkStart":J
    const-wide/16 v2, 0x0

    .line 106
    .local v2, "bytesSeen":J
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v5, v4

    .line 107
    .local v5, "content":Lokio/Buffer;
    const/4 v4, 0x0

    .line 108
    .local v4, "currentHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v11, 0x0

    move-object/from16 v17, v4

    move-wide/from16 v18, v11

    move-wide v11, v2

    move-wide v2, v0

    .line 111
    .end local v0    # "chunkStart":J
    .end local v4    # "currentHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "chunkStart":J
    .local v11, "bytesSeen":J
    .local v17, "currentHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v18, "currentHeadersLength":J
    :goto_0
    const/4 v0, 0x0

    .line 115
    .local v0, "isCloseDelimiter":Z
    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v13, v1

    sub-long v13, v11, v13

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 116
    .local v13, "searchStart":J
    invoke-virtual {v5, v7, v13, v14}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v15

    .line 117
    .local v15, "indexOfDelimiter":J
    const-wide/16 v20, -0x1

    cmp-long v1, v15, v20

    if-nez v1, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 119
    invoke-virtual {v5, v8, v13, v14}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v15

    move v4, v0

    move-wide/from16 v22, v15

    goto :goto_1

    .line 117
    :cond_0
    move v4, v0

    move-wide/from16 v22, v15

    .line 122
    .end local v0    # "isCloseDelimiter":Z
    .end local v15    # "indexOfDelimiter":J
    .local v4, "isCloseDelimiter":Z
    .local v22, "indexOfDelimiter":J
    :goto_1
    const-wide/16 v24, 0x0

    cmp-long v0, v22, v20

    if-nez v0, :cond_4

    .line 123
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v20

    .line 125
    .end local v11    # "bytesSeen":J
    .local v20, "bytesSeen":J
    if-nez v17, :cond_2

    .line 126
    invoke-virtual {v5, v9, v13, v14}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    .line 127
    .local v0, "indexOfHeaders":J
    cmp-long v11, v0, v24

    if-ltz v11, :cond_1

    .line 128
    iget-object v11, v6, Lcom/facebook/react/devsupport/MultipartStreamReader;->mSource:Lokio/BufferedSource;

    invoke-interface {v11, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 129
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    move-object v15, v11

    .line 130
    .local v15, "headers":Lokio/Buffer;
    sub-long v26, v0, v13

    move-object v11, v5

    move-object v12, v15

    move-wide/from16 v28, v13

    .end local v13    # "searchStart":J
    .local v28, "searchStart":J
    move-object/from16 v30, v15

    .end local v15    # "headers":Lokio/Buffer;
    .local v30, "headers":Lokio/Buffer;
    move-wide/from16 v15, v26

    invoke-virtual/range {v11 .. v16}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 131
    invoke-virtual/range {v30 .. v30}, Lokio/Buffer;->size()J

    move-result-wide v11

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v13

    int-to-long v13, v13

    add-long v18, v11, v13

    .line 132
    move-object/from16 v11, v30

    .end local v30    # "headers":Lokio/Buffer;
    .local v11, "headers":Lokio/Buffer;
    invoke-direct {v6, v11}, Lcom/facebook/react/devsupport/MultipartStreamReader;->parseHeaders(Lokio/Buffer;)Ljava/util/Map;

    move-result-object v17

    goto :goto_2

    .line 127
    .end local v11    # "headers":Lokio/Buffer;
    .end local v28    # "searchStart":J
    .restart local v13    # "searchStart":J
    :cond_1
    move-wide/from16 v28, v13

    .line 134
    .end local v0    # "indexOfHeaders":J
    .end local v13    # "searchStart":J
    .restart local v28    # "searchStart":J
    :goto_2
    move-wide v14, v2

    move v11, v4

    move-object v13, v5

    goto :goto_3

    .line 135
    .end local v28    # "searchStart":J
    .restart local v13    # "searchStart":J
    :cond_2
    move-wide/from16 v28, v13

    .end local v13    # "searchStart":J
    .restart local v28    # "searchStart":J
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long v11, v0, v18

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide v14, v2

    .end local v2    # "chunkStart":J
    .local v14, "chunkStart":J
    move-wide v2, v11

    move v11, v4

    .end local v4    # "isCloseDelimiter":Z
    .local v11, "isCloseDelimiter":Z
    move v4, v13

    move-object v13, v5

    .end local v5    # "content":Lokio/Buffer;
    .local v13, "content":Lokio/Buffer;
    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/MultipartStreamReader;->emitProgress(Ljava/util/Map;JZLcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)V

    .line 138
    :goto_3
    iget-object v0, v6, Lcom/facebook/react/devsupport/MultipartStreamReader;->mSource:Lokio/BufferedSource;

    int-to-long v1, v10

    invoke-interface {v0, v13, v1, v2}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 139
    .local v0, "bytesRead":J
    cmp-long v2, v0, v24

    if-gtz v2, :cond_3

    .line 140
    const/4 v2, 0x0

    return v2

    .line 139
    :cond_3
    move-object v5, v13

    move-wide v2, v14

    move-wide/from16 v11, v20

    goto/16 :goto_0

    .line 145
    .end local v0    # "bytesRead":J
    .end local v14    # "chunkStart":J
    .end local v20    # "bytesSeen":J
    .end local v28    # "searchStart":J
    .restart local v2    # "chunkStart":J
    .restart local v4    # "isCloseDelimiter":Z
    .restart local v5    # "content":Lokio/Buffer;
    .local v11, "bytesSeen":J
    .local v13, "searchStart":J
    :cond_4
    move-wide/from16 v28, v13

    move-wide v14, v2

    move-object v13, v5

    move v5, v4

    .end local v2    # "chunkStart":J
    .end local v4    # "isCloseDelimiter":Z
    .local v5, "isCloseDelimiter":Z
    .local v13, "content":Lokio/Buffer;
    .restart local v14    # "chunkStart":J
    .restart local v28    # "searchStart":J
    move-wide/from16 v2, v22

    .line 146
    .local v2, "chunkEnd":J
    sub-long v0, v2, v14

    .line 149
    .local v0, "length":J
    cmp-long v4, v14, v24

    if-lez v4, :cond_5

    .line 150
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 151
    .local v4, "chunk":Lokio/Buffer;
    invoke-virtual {v13, v14, v15}, Lokio/Buffer;->skip(J)V

    .line 152
    invoke-virtual {v13, v4, v0, v1}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 153
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v20

    sub-long v20, v20, v18

    const/16 v16, 0x1

    move-wide/from16 v24, v0

    .end local v0    # "length":J
    .local v24, "length":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide v8, v2

    .end local v2    # "chunkEnd":J
    .end local v9    # "headersDelimiter":Lokio/ByteString;
    .local v8, "chunkEnd":J
    .local v26, "closeDelimiter":Lokio/ByteString;
    .local v27, "headersDelimiter":Lokio/ByteString;
    move-wide/from16 v2, v20

    move/from16 v20, v10

    move-object v10, v4

    .end local v4    # "chunk":Lokio/Buffer;
    .local v10, "chunk":Lokio/Buffer;
    .local v20, "bufferLen":I
    move/from16 v4, v16

    move-wide/from16 v30, v11

    move v11, v5

    .end local v5    # "isCloseDelimiter":Z
    .local v11, "isCloseDelimiter":Z
    .local v30, "bytesSeen":J
    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/MultipartStreamReader;->emitProgress(Ljava/util/Map;JZLcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)V

    .line 154
    move-object/from16 v0, p1

    invoke-direct {v6, v10, v11, v0}, Lcom/facebook/react/devsupport/MultipartStreamReader;->emitChunk(Lokio/Buffer;ZLcom/facebook/react/devsupport/MultipartStreamReader$ChunkListener;)V

    .line 155
    const/16 v17, 0x0

    .line 156
    const-wide/16 v1, 0x0

    .line 157
    .end local v10    # "chunk":Lokio/Buffer;
    .end local v18    # "currentHeadersLength":J
    .local v1, "currentHeadersLength":J
    move-wide/from16 v18, v1

    goto :goto_4

    .line 158
    .end local v1    # "currentHeadersLength":J
    .end local v20    # "bufferLen":I
    .end local v24    # "length":J
    .end local v26    # "closeDelimiter":Lokio/ByteString;
    .end local v27    # "headersDelimiter":Lokio/ByteString;
    .end local v30    # "bytesSeen":J
    .restart local v0    # "length":J
    .restart local v2    # "chunkEnd":J
    .restart local v5    # "isCloseDelimiter":Z
    .local v8, "closeDelimiter":Lokio/ByteString;
    .restart local v9    # "headersDelimiter":Lokio/ByteString;
    .local v10, "bufferLen":I
    .local v11, "bytesSeen":J
    .restart local v18    # "currentHeadersLength":J
    :cond_5
    move-wide/from16 v24, v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v20, v10

    move-wide/from16 v30, v11

    move-object/from16 v0, p1

    move-wide v8, v2

    move v11, v5

    .end local v0    # "length":J
    .end local v2    # "chunkEnd":J
    .end local v5    # "isCloseDelimiter":Z
    .end local v9    # "headersDelimiter":Lokio/ByteString;
    .end local v10    # "bufferLen":I
    .local v8, "chunkEnd":J
    .local v11, "isCloseDelimiter":Z
    .restart local v20    # "bufferLen":I
    .restart local v24    # "length":J
    .restart local v26    # "closeDelimiter":Lokio/ByteString;
    .restart local v27    # "headersDelimiter":Lokio/ByteString;
    .restart local v30    # "bytesSeen":J
    invoke-virtual {v13, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 161
    :goto_4
    if-eqz v11, :cond_6

    .line 162
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_6
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    move-wide v3, v1

    .end local v14    # "chunkStart":J
    .local v3, "chunkStart":J
    move-wide v11, v1

    .line 166
    .end local v8    # "chunkEnd":J
    .end local v22    # "indexOfDelimiter":J
    .end local v24    # "length":J
    .end local v28    # "searchStart":J
    .end local v30    # "bytesSeen":J
    .local v11, "bytesSeen":J
    move-wide v2, v3

    move-object v5, v13

    move/from16 v10, v20

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    goto/16 :goto_0
.end method
