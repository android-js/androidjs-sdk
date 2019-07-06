.class public Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;
.super Ljava/lang/Object;
.source "LayoutMetricsConversions.java"


# static fields
.field public static final REACT_CONSTRAINT_UNDEFINED:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxSize(I)F
    .locals 3
    .param p0, "viewMeasureSpec"    # I

    .line 28
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 31
    .local v1, "size":I
    if-nez v0, :cond_0

    const/high16 v2, -0x31000000

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    :goto_0
    return v2
.end method

.method public static getMinSize(I)F
    .locals 3
    .param p0, "viewMeasureSpec"    # I

    .line 21
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 22
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 24
    .local v1, "size":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    int-to-float v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;
    .locals 1
    .param p0, "minSize"    # F
    .param p1, "maxSize"    # F

    .line 48
    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    .local v0, "yogaMeasureMode":Lcom/facebook/yoga/YogaMeasureMode;
    goto :goto_0

    .line 50
    .end local v0    # "yogaMeasureMode":Lcom/facebook/yoga/YogaMeasureMode;
    :cond_0
    const/high16 v0, -0x31000000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    .restart local v0    # "yogaMeasureMode":Lcom/facebook/yoga/YogaMeasureMode;
    goto :goto_0

    .line 53
    .end local v0    # "yogaMeasureMode":Lcom/facebook/yoga/YogaMeasureMode;
    :cond_1
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    .line 55
    .restart local v0    # "yogaMeasureMode":Lcom/facebook/yoga/YogaMeasureMode;
    :goto_0
    return-object v0
.end method

.method public static getYogaSize(FF)F
    .locals 1
    .param p0, "minSize"    # F
    .param p1, "maxSize"    # F

    .line 36
    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .local v0, "yogaSize":F
    goto :goto_0

    .line 38
    .end local v0    # "yogaSize":F
    :cond_0
    const/high16 v0, -0x31000000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x0

    .restart local v0    # "yogaSize":F
    goto :goto_0

    .line 41
    .end local v0    # "yogaSize":F
    :cond_1
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 43
    .restart local v0    # "yogaSize":F
    :goto_0
    return v0
.end method
