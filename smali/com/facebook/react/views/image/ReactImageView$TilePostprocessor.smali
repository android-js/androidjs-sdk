.class Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;
.super Lcom/facebook/imagepipeline/request/BasePostprocessor;
.source "ReactImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/image/ReactImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TilePostprocessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/image/ReactImageView;


# direct methods
.method private constructor <init>(Lcom/facebook/react/views/image/ReactImageView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/BasePostprocessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/views/image/ReactImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/views/image/ReactImageView;
    .param p2, "x1"    # Lcom/facebook/react/views/image/ReactImageView$1;

    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;-><init>(Lcom/facebook/react/views/image/ReactImageView;)V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;
    .locals 11
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v1}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v2}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    .local v0, "destRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-static {v1}, Lcom/facebook/react/views/image/ReactImageView;->access$100(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v4

    .line 161
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$500()Landroid/graphics/Matrix;

    move-result-object v5

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 160
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 168
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-static {v3}, Lcom/facebook/react/views/image/ReactImageView;->access$600(Lcom/facebook/react/views/image/ReactImageView;)Landroid/graphics/Shader$TileMode;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-static {v4}, Lcom/facebook/react/views/image/ReactImageView;->access$600(Lcom/facebook/react/views/image/ReactImageView;)Landroid/graphics/Shader$TileMode;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 171
    .local v2, "shader":Landroid/graphics/Shader;
    invoke-static {}, Lcom/facebook/react/views/image/ReactImageView;->access$500()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 174
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v3}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v4}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(II)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 176
    .local v3, "output":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :try_start_0
    new-instance v4, Landroid/graphics/Canvas;

    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 178
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 178
    return-object v5

    .line 180
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 181
    throw v4
.end method
