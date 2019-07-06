.class public Lcom/facebook/imageutils/JfifUtil;
.super Ljava/lang/Object;
.source "JfifUtil.java"


# static fields
.field public static final APP1_EXIF_MAGIC:I = 0x45786966

.field public static final MARKER_APP1:I = 0xe1

.field public static final MARKER_EOI:I = 0xd9

.field public static final MARKER_ESCAPE_BYTE:I = 0x0

.field public static final MARKER_FIRST_BYTE:I = 0xff

.field public static final MARKER_RST0:I = 0xd0

.field public static final MARKER_RST7:I = 0xd7

.field public static final MARKER_SOFn:I = 0xc0

.field public static final MARKER_SOI:I = 0xd8

.field public static final MARKER_SOS:I = 0xda

.field public static final MARKER_TEM:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getAutoRotateAngleFromOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .line 46
    invoke-static {p0}, Lcom/facebook/imageutils/TiffUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0

    return v0
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 69
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageutils/JfifUtil;->moveToAPP1EXIF(Ljava/io/InputStream;)I

    move-result v1

    .line 70
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/imageutils/TiffUtil;->readOrientationFromTIFF(Ljava/io/InputStream;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 74
    .end local v1    # "length":I
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method public static getOrientation([B)I
    .locals 1
    .param p0, "jpeg"    # [B

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/facebook/imageutils/JfifUtil;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private static isSOFn(I)Z
    .locals 1
    .param p0, "marker"    # I

    .line 124
    packed-switch p0, :pswitch_data_0

    .line 140
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 138
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static moveToAPP1EXIF(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/16 v0, 0xe1

    invoke-static {p0, v0}, Lcom/facebook/imageutils/JfifUtil;->moveToMarker(Ljava/io/InputStream;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x2

    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    sub-int/2addr v2, v0

    .line 154
    .local v2, "length":I
    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 155
    const/4 v3, 0x4

    invoke-static {p0, v3, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 156
    .local v3, "magic":I
    add-int/lit8 v2, v2, -0x4

    .line 157
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 158
    .local v0, "zero":I
    add-int/lit8 v2, v2, -0x2

    .line 159
    const v4, 0x45786966

    if-ne v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 161
    return v2

    .line 165
    .end local v0    # "zero":I
    .end local v2    # "length":I
    .end local v3    # "magic":I
    :cond_0
    return v1
.end method

.method public static moveToMarker(Ljava/io/InputStream;I)Z
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "markerToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_7

    .line 90
    const/16 v2, 0xff

    .line 91
    .local v2, "marker":I
    :goto_1
    if-ne v2, v3, :cond_1

    .line 92
    invoke-static {p0, v1, v0}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    goto :goto_1

    .line 95
    :cond_1
    const/16 v3, 0xc0

    if-ne p1, v3, :cond_2

    invoke-static {v2}, Lcom/facebook/imageutils/JfifUtil;->isSOFn(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    return v1

    .line 98
    :cond_2
    if-ne v2, p1, :cond_3

    .line 99
    return v1

    .line 103
    :cond_3
    const/16 v3, 0xd8

    if-eq v2, v3, :cond_0

    if-ne v2, v1, :cond_4

    .line 104
    goto :goto_0

    .line 109
    :cond_4
    const/16 v1, 0xd9

    if-eq v2, v1, :cond_6

    const/16 v1, 0xda

    if-ne v2, v1, :cond_5

    goto :goto_2

    .line 115
    :cond_5
    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    sub-int/2addr v0, v1

    .line 117
    .local v0, "length":I
    int-to-long v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 118
    .end local v0    # "length":I
    .end local v2    # "marker":I
    goto :goto_0

    .line 110
    .restart local v2    # "marker":I
    :cond_6
    :goto_2
    return v0

    .line 119
    .end local v2    # "marker":I
    :cond_7
    return v0
.end method
