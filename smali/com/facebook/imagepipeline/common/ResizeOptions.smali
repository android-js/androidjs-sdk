.class public Lcom/facebook/imagepipeline/common/ResizeOptions;
.super Ljava/lang/Object;
.source "ResizeOptions.java"


# static fields
.field public static final DEFAULT_ROUNDUP_FRACTION:F = 0.6666667f


# instance fields
.field public final height:I

.field public final maxBitmapSize:F

.field public final roundUpFraction:F

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 61
    const/high16 v0, 0x45000000    # 2048.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(IIF)V

    .line 62
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxBitmapSize"    # F

    .line 68
    const v0, 0x3f2aaaab

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(IIFF)V

    .line 69
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxBitmapSize"    # F
    .param p4, "roundUpFraction"    # F

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 77
    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 78
    iput p1, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    .line 79
    iput p2, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    .line 80
    iput p3, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    .line 81
    iput p4, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->roundUpFraction:F

    .line 82
    return-void
.end method

.method public static forDimensions(II)Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 42
    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    return-object v0

    .line 43
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forSquareSize(I)Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 1
    .param p0, "size"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 52
    if-gtz p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-direct {v0, p0, p0}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 97
    return v2

    .line 99
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 100
    .local v1, "that":Lcom/facebook/imagepipeline/common/ResizeOptions;
    iget v3, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    iget v4, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    iget v4, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 86
    iget v0, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    iget v1, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    invoke-static {v0, v1}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 106
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%dx%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
