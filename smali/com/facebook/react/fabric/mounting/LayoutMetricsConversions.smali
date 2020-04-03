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
    .locals 1

    .line 28
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    if-nez v0, :cond_0

    const/high16 p0, -0x31000000

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public static getMinSize(I)F
    .locals 2

    .line 21
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 22
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;
    .locals 0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    .line 49
    sget-object p0, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    goto :goto_0

    :cond_0
    const/high16 p0, -0x31000000

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    .line 51
    sget-object p0, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    :goto_0
    return-object p0
.end method

.method public static getYogaSize(FF)F
    .locals 0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x31000000

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p0

    :goto_0
    return p0
.end method
