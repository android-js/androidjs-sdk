.class public Lcom/facebook/react/views/text/CustomLineHeightSpan;
.super Ljava/lang/Object;
.source "CustomLineHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;
.implements Lcom/facebook/react/views/text/ReactSpan;


# instance fields
.field private final mHeight:I


# direct methods
.method constructor <init>(F)V
    .locals 2
    .param p1, "height"    # F

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    .line 22
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 37
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    if-le v0, v1, :cond_0

    .line 39
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 40
    const/4 v0, 0x0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_0

    .line 41
    :cond_0
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    if-le v0, v1, :cond_1

    .line 43
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 44
    iget v0, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 45
    :cond_1
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    if-le v0, v1, :cond_2

    .line 47
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 48
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 49
    :cond_2
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    if-le v0, v1, :cond_3

    .line 51
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lcom/facebook/react/views/text/CustomLineHeightSpan;->mHeight:I

    sub-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 54
    :cond_3
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 58
    .local v1, "additional":I
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v2, v0

    int-to-float v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v5

    double-to-int v0, v2

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 59
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v2, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 60
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 61
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 63
    .end local v1    # "additional":I
    :goto_0
    return-void
.end method
