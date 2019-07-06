.class public Lcom/facebook/react/modules/network/ProgressiveStringDecoder;
.super Ljava/lang/Object;
.source "ProgressiveStringDecoder.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private final mDecoder:Ljava/nio/charset/CharsetDecoder;

.field private remainder:[B


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    .line 39
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 40
    return-void
.end method


# virtual methods
.method public decodeNext([BI)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .line 52
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    array-length v2, v0

    add-int/2addr v2, p2

    new-array v2, v2, [B

    .line 54
    .local v2, "decodeData":[B
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    array-length v0, v0

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    array-length v0, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 58
    .end local v2    # "decodeData":[B
    :cond_0
    move-object v2, p1

    .line 61
    .restart local v2    # "decodeData":[B
    :goto_0
    invoke-static {v2, v1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "decodeBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 63
    .local v3, "result":Ljava/nio/CharBuffer;
    const/4 v4, 0x0

    .line 64
    .local v4, "decoded":Z
    const/4 v5, 0x0

    .line 65
    .local v5, "remainderLenght":I
    :goto_1
    if-nez v4, :cond_1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 67
    :try_start_0
    iget-object v6, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v6, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 68
    const/4 v4, 0x1

    goto :goto_2

    .line 69
    :catch_0
    move-exception v6

    .line 70
    .local v6, "e":Ljava/nio/charset/CharacterCodingException;
    add-int/lit8 v5, v5, 0x1

    .line 71
    sub-int v7, p2, v5

    invoke-static {v2, v1, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .end local v6    # "e":Ljava/nio/charset/CharacterCodingException;
    :goto_2
    goto :goto_1

    .line 74
    :cond_1
    if-eqz v4, :cond_2

    if-lez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 75
    .local v6, "hasRemainder":Z
    :goto_3
    if-eqz v6, :cond_3

    .line 76
    new-array v7, v5, [B

    iput-object v7, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    .line 77
    sub-int v7, p2, v5

    iget-object v8, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    invoke-static {v2, v7, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 79
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->remainder:[B

    .line 82
    :goto_4
    if-nez v4, :cond_4

    .line 83
    const-string v1, "ReactNative"

    const-string v7, "failed to decode string from byte array"

    invoke-static {v1, v7}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, ""

    return-object v1

    .line 86
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v8

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->length()I

    move-result v9

    invoke-direct {v7, v8, v1, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method
