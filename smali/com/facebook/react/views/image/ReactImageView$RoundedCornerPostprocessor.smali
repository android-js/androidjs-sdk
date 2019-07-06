.class Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;
.super Lcom/facebook/imagepipeline/request/BasePostprocessor;
.source "ReactImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/image/ReactImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedCornerPostprocessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/image/ReactImageView;


# direct methods
.method private constructor <init>(Lcom/facebook/react/views/image/ReactImageView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/BasePostprocessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/views/image/ReactImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/views/image/ReactImageView;
    .param p2, "x1"    # Lcom/facebook/react/views/image/ReactImageView$1;

    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;-><init>(Lcom/facebook/react/views/image/ReactImageView;)V

    return-void
.end method


# virtual methods
.method getRadii(Landroid/graphics/Bitmap;[F[F)V
    .locals 9
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "computedCornerRadii"    # [F
    .param p3, "mappedRadii"    # [F

    .line 97
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-static {v0}, Lcom/facebook/react/views/image/ReactImageView;->access$100(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$000()Landroid/graphics/Matrix;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 97
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 104
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$000()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$200()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 106
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$200()Landroid/graphics/Matrix;

    move-result-object v0

    aget v1, p2, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    aput v0, p3, v8

    .line 107
    aget v0, p3, v8

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 109
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$200()Landroid/graphics/Matrix;

    move-result-object v0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    const/4 v1, 0x2

    aput v0, p3, v1

    .line 110
    aget v0, p3, v1

    const/4 v2, 0x3

    aput v0, p3, v2

    .line 112
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$200()Landroid/graphics/Matrix;

    move-result-object v0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    const/4 v1, 0x4

    aput v0, p3, v1

    .line 113
    aget v0, p3, v1

    const/4 v1, 0x5

    aput v0, p3, v1

    .line 115
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$200()Landroid/graphics/Matrix;

    move-result-object v0

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    const/4 v1, 0x6

    aput v0, p3, v1

    .line 116
    aget v0, p3, v1

    const/4 v1, 0x7

    aput v0, p3, v1

    .line 117
    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "output"    # Landroid/graphics/Bitmap;
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .line 121
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$300()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/views/image/ReactImageView;->access$400(Lcom/facebook/react/views/image/ReactImageView;[F)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 124
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$300()[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$300()[F

    move-result-object v1

    aget v1, v1, v0

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$300()[F

    move-result-object v1

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$300()[F

    move-result-object v1

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 129
    return-void

    .line 131
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/16 v3, 0x8

    new-array v3, v3, [F

    .line 138
    .local v3, "radii":[F
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$300()[F

    move-result-object v4

    invoke-virtual {p0, p2, v4, v3}, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;->getRadii(Landroid/graphics/Bitmap;[F[F)V

    .line 140
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 142
    .local v4, "pathForBorderRadius":Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    .line 143
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 142
    invoke-virtual {v4, v5, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 147
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    return-void
.end method
