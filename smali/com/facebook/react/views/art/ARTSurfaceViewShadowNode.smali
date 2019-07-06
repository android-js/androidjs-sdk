.class public Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ARTSurfaceViewShadowNode.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mBackgroundColor:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    return-void
.end method

.method private drawOutput()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 69
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    iget-object v1, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 74
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v1, "paint":Landroid/graphics/Paint;
    nop

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 76
    invoke-virtual {p0, v2}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/views/art/ARTVirtualNode;

    .line 77
    .local v3, "child":Lcom/facebook/react/views/art/ARTVirtualNode;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v1, v4}, Lcom/facebook/react/views/art/ARTVirtualNode;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 78
    invoke-virtual {v3}, Lcom/facebook/react/views/art/ARTVirtualNode;->markUpdateSeen()V

    .line 75
    .end local v3    # "child":Lcom/facebook/react/views/art/ARTVirtualNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_3

    .line 82
    return-void

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in Surface.unlockCanvasAndPost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void

    .line 63
    :cond_4
    :goto_3
    invoke-direct {p0, p0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->markChildrenUpdatesSeen(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 64
    return-void
.end method

.method private markChildrenUpdatesSeen(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2
    .param p1, "shadowNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 94
    .local v1, "child":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdateSeen()V

    .line 95
    invoke-direct {p0, v1}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->markChildrenUpdatesSeen(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 92
    .end local v1    # "child":Lcom/facebook/react/uimanager/ReactShadowNode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public isVirtual()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualAnchor()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 1
    .param p1, "uiUpdater"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 56
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V

    .line 57
    invoke-direct {p0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->drawOutput()V

    .line 58
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->getReactTag()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUpdateExtraData(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 101
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mSurface:Landroid/view/Surface;

    .line 102
    invoke-direct {p0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->drawOutput()V

    .line 103
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 107
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mSurface:Landroid/view/Surface;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 113
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 116
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "backgroundColor"
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->mBackgroundColor:Ljava/lang/Integer;

    .line 41
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->markUpdated()V

    .line 42
    return-void
.end method
