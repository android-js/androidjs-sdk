.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenterCrop"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 6
    .param p1, "outTransform"    # Landroid/graphics/Matrix;
    .param p2, "parentRect"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I
    .param p5, "focusX"    # F
    .param p6, "focusY"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F

    .line 367
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p8, p7

    if-lez v1, :cond_0

    .line 368
    move v1, p8

    .line 369
    .local v1, "scale":F
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p3

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 370
    .local v2, "dx":F
    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .local v3, "dy":F
    goto :goto_0

    .line 372
    .end local v1    # "scale":F
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_0
    move v1, p7

    .line 373
    .restart local v1    # "scale":F
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 374
    .restart local v2    # "dx":F
    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p4

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    .line 376
    .restart local v3    # "dy":F
    :goto_0
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 377
    add-float v4, v2, v0

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 378
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 382
    const-string v0, "center_crop"

    return-object v0
.end method
