.class public abstract Lcom/facebook/react/views/art/ARTVirtualNode;
.super Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
.source "ARTVirtualNode.java"


# static fields
.field protected static final MIN_OPACITY_FOR_DRAW:F = 0.01f

.field private static final sMatrixData:[F

.field private static final sRawMatrix:[F


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mOpacity:F

.field protected final mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const/16 v0, 0x9

    new-array v1, v0, [F

    sput-object v1, Lcom/facebook/react/views/art/ARTVirtualNode;->sMatrixData:[F

    .line 29
    new-array v0, v0, [F

    sput-object v0, Lcom/facebook/react/views/art/ARTVirtualNode;->sRawMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mOpacity:F

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    .line 37
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mScale:F

    .line 38
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
.end method

.method public isVirtual()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    return-void
.end method

.method protected final saveAndSetupCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 61
    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .line 75
    iput p1, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mOpacity:F

    .line 76
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTVirtualNode;->markUpdated()V

    .line 77
    return-void
.end method

.method public setTransform(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "transformArray"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .line 81
    if-eqz p1, :cond_2

    .line 82
    sget-object v0, Lcom/facebook/react/views/art/ARTVirtualNode;->sMatrixData:[F

    invoke-static {p1, v0}, Lcom/facebook/react/views/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;[F)I

    move-result v0

    .line 83
    .local v0, "matrixSize":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTVirtualNode;->setupMatrix()V

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 88
    .end local v0    # "matrixSize":I
    :goto_0
    goto :goto_1

    .line 86
    .restart local v0    # "matrixSize":I
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v2, "Transform matrices must be of size 6"

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .end local v0    # "matrixSize":I
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTVirtualNode;->markUpdated()V

    .line 92
    return-void
.end method

.method protected setupMatrix()V
    .locals 7

    .line 95
    sget-object v0, Lcom/facebook/react/views/art/ARTVirtualNode;->sRawMatrix:[F

    sget-object v1, Lcom/facebook/react/views/art/ARTVirtualNode;->sMatrixData:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    .line 96
    const/4 v2, 0x2

    aget v3, v1, v2

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 97
    const/4 v3, 0x4

    aget v5, v1, v3

    iget v6, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mScale:F

    mul-float v5, v5, v6

    aput v5, v0, v2

    .line 98
    aget v2, v1, v4

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 99
    aget v2, v1, v4

    aput v2, v0, v3

    .line 100
    const/4 v2, 0x5

    aget v1, v1, v2

    mul-float v1, v1, v6

    aput v1, v0, v2

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 102
    const/4 v2, 0x7

    aput v1, v0, v2

    .line 103
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/facebook/react/views/art/ARTVirtualNode;->sRawMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 108
    return-void
.end method
