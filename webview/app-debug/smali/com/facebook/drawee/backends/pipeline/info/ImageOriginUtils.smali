.class public Lcom/facebook/drawee/backends/pipeline/info/ImageOriginUtils;
.super Ljava/lang/Object;
.source "ImageOriginUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapProducerNameToImageOrigin(Ljava/lang/String;)I
    .locals 7
    .param p0, "producerName"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "BitmapMemoryCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "DiskCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "NetworkFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "EncodedMemoryCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "BitmapMemoryCacheGetProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    .line 44
    return v3

    .line 42
    :cond_1
    return v1

    .line 40
    :cond_2
    return v6

    .line 38
    :cond_3
    return v5

    .line 36
    :cond_4
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x72166c8a -> :sswitch_4
        -0x4df0ea1b -> :sswitch_3
        -0x48fa9b02 -> :sswitch_2
        0x271e6a77 -> :sswitch_1
        0x39158fe4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "imageOrigin"    # I

    .line 18
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 28
    const-string v0, "unknown"

    return-object v0

    .line 26
    :cond_0
    const-string v0, "memory_bitmap"

    return-object v0

    .line 24
    :cond_1
    const-string v0, "memory_encoded"

    return-object v0

    .line 22
    :cond_2
    const-string v0, "disk"

    return-object v0

    .line 20
    :cond_3
    const-string v0, "network"

    return-object v0
.end method
