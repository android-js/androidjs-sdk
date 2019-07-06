.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactHorizontalScrollViewManager.java"

# interfaces
.implements Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidHorizontalScrollView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;",
        ">;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
        "Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidHorizontalScrollView"

.field private static final SPACING_TYPES:[I


# instance fields
.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->SPACING_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;-><init>(Lcom/facebook/react/views/scroll/FpsListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 1
    .param p1, "fpsListener"    # Lcom/facebook/react/views/scroll/FpsListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 55
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 65
    new-instance v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V

    return-object v0
.end method

.method public flashScrollIndicators(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 0
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .line 168
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->flashScrollIndicators()V

    .line 169
    return-void
.end method

.method public bridge synthetic flashScrollIndicators(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->flashScrollIndicators(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "AndroidHorizontalScrollView"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->receiveCommand(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->receiveCommand(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;ILcom/facebook/react/bridge/ReadableArray;)V

    .line 164
    return-void
.end method

.method public scrollTo(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V
    .locals 2
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "data"    # Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;

    .line 174
    iget-boolean v0, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mAnimated:Z

    if-eqz v0, :cond_0

    .line 175
    iget v0, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestX:I

    iget v1, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestY:I

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 177
    :cond_0
    iget v0, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestX:I

    iget v1, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;->mDestY:I

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 179
    :goto_0
    return-void
.end method

.method public bridge synthetic scrollTo(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->scrollTo(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V

    return-void
.end method

.method public scrollToEnd(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V
    .locals 2
    .param p1, "scrollView"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "data"    # Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;

    .line 186
    nop

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    .local v0, "right":I
    iget-boolean v1, p2, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;->mAnimated:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 193
    :goto_0
    return-void
.end method

.method public bridge synthetic scrollToEnd(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->scrollToEnd(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V

    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;ILjava/lang/Integer;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "index"    # I
    .param p3, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor"
        }
    .end annotation

    .line 248
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p3, :cond_0

    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    int-to-float v1, v1

    :goto_0
    nop

    .line 250
    .local v1, "rgbComponent":F
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    .line 251
    .local v0, "alphaComponent":F
    :goto_1
    sget-object v2, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->SPACING_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderColor(IFF)V

    .line 252
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;IF)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "index"    # I
    .param p3, "borderRadius"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius"
        }
    .end annotation

    .line 214
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 218
    :cond_0
    if-nez p2, :cond_1

    .line 219
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderRadius(F)V

    goto :goto_0

    .line 221
    :cond_1
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderRadius(FI)V

    .line 223
    :goto_0
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "borderStyle"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    .line 227
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderStyle(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;IF)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "index"    # I
    .param p3, "width"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth"
        }
    .end annotation

    .line 238
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 241
    :cond_0
    sget-object v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setBorderWidth(IF)V

    .line 242
    return-void
.end method

.method public setBottomFillColor(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x0
        name = "endFillColor"
    .end annotation

    .line 203
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setEndFillColor(I)V

    .line 204
    return-void
.end method

.method public setDecelerationRate(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "decelerationRate"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "decelerationRate"
    .end annotation

    .line 80
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setDecelerationRate(F)V

    .line 81
    return-void
.end method

.method public setNestedScrollEnabled(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nestedScrollEnabled"
    .end annotation

    .line 155
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 156
    return-void
.end method

.method public setOverScrollMode(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overScrollMode"
    .end annotation

    .line 150
    invoke-static {p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->parseOverScrollMode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setOverScrollMode(I)V

    .line 151
    return-void
.end method

.method public setOverflow(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "overflow"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    .line 256
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setOverflow(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setPagingEnabled(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "pagingEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pagingEnabled"
    .end annotation

    .line 142
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setPagingEnabled(Z)V

    .line 143
    return-void
.end method

.method public setPersistentScrollbar(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "persistentScrollbar"
    .end annotation

    .line 261
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 262
    return-void
.end method

.method public setRemoveClippedSubviews(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "removeClippedSubviews"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "removeClippedSubviews"
    .end annotation

    .line 112
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setRemoveClippedSubviews(Z)V

    .line 113
    return-void
.end method

.method public setScrollEnabled(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "scrollEnabled"
    .end annotation

    .line 70
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollEnabled(Z)V

    .line 71
    return-void
.end method

.method public setScrollPerfTag(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "scrollPerfTag"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scrollPerfTag"
    .end annotation

    .line 137
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setScrollPerfTag(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setSendMomentumEvents(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "sendMomentumEvents"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sendMomentumEvents"
    .end annotation

    .line 125
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSendMomentumEvents(Z)V

    .line 126
    return-void
.end method

.method public setShowsHorizontalScrollIndicator(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsHorizontalScrollIndicator"
    .end annotation

    .line 75
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 76
    return-void
.end method

.method public setSnapToEnd(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToEnd"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToEnd"
    .end annotation

    .line 107
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapToEnd(Z)V

    .line 108
    return-void
.end method

.method public setSnapToInterval(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;F)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToInterval"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToInterval"
    .end annotation

    .line 86
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    .local v0, "screenDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapInterval(I)V

    .line 88
    return-void
.end method

.method public setSnapToOffsets(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToOffsets"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToOffsets"
    .end annotation

    .line 92
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    .local v0, "screenDisplayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 95
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapOffsets(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public setSnapToStart(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p2, "snapToStart"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "snapToStart"
    .end annotation

    .line 102
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setSnapToStart(Z)V

    .line 103
    return-void
.end method
