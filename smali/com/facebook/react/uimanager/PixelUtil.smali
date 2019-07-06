.class public Lcom/facebook/react/uimanager/PixelUtil;
.super Ljava/lang/Object;
.source "PixelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayMetricDensity()F
    .locals 1

    .line 81
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static toDIPFromPixel(F)F
    .locals 1
    .param p0, "value"    # F

    .line 74
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    return v0
.end method

.method public static toPixelFromDIP(D)F
    .locals 1
    .param p0, "value"    # D

    .line 32
    double-to-float v0, p0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    return v0
.end method

.method public static toPixelFromDIP(F)F
    .locals 2
    .param p0, "value"    # F

    .line 22
    nop

    .line 25
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 22
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static toPixelFromSP(D)F
    .locals 1
    .param p0, "value"    # D

    .line 67
    double-to-float v0, p0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    return v0
.end method

.method public static toPixelFromSP(F)F
    .locals 1
    .param p0, "value"    # F

    .line 46
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(FF)F

    move-result v0

    return v0
.end method

.method public static toPixelFromSP(FF)F
    .locals 4
    .param p0, "value"    # F
    .param p1, "maxFontScale"    # F

    .line 53
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 55
    .local v1, "scaledDensity":F
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v1, v2

    .line 56
    .local v2, "currentFontScale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    .line 57
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v3, p1

    .line 60
    :cond_0
    mul-float v3, p0, v1

    return v3
.end method

.method public static toSPFromPixel(F)F
    .locals 1
    .param p0, "value"    # F

    .line 39
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p0, v0

    return v0
.end method
