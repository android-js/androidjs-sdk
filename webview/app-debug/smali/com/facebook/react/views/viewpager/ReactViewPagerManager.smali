.class public Lcom/facebook/react/views/viewpager/ReactViewPagerManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactViewPagerManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidViewPager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/viewpager/ReactViewPager;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMAND_SET_PAGE:I = 0x1

.field public static final COMMAND_SET_PAGE_WITHOUT_ANIMATION:I = 0x2

.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidViewPager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;->addView(Lcom/facebook/react/views/viewpager/ReactViewPager;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/facebook/react/views/viewpager/ReactViewPager;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .line 99
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/viewpager/ReactViewPager;->addViewToAdapter(Landroid/view/View;I)V

    .line 100
    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/viewpager/ReactViewPager;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/viewpager/ReactViewPager;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 43
    new-instance v0, Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/viewpager/ReactViewPager;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;->getChildAt(Lcom/facebook/react/views/viewpager/ReactViewPager;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Lcom/facebook/react/views/viewpager/ReactViewPager;I)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "index"    # I

    .line 109
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getViewFromAdapter(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;->getChildCount(Lcom/facebook/react/views/viewpager/ReactViewPager;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Lcom/facebook/react/views/viewpager/ReactViewPager;)I
    .locals 1
    .param p1, "parent"    # Lcom/facebook/react/views/viewpager/ReactViewPager;

    .line 104
    invoke-virtual {p1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getViewCountInAdapter()I

    move-result v0

    return v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    nop

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    const-string v2, "setPage"

    const-string v3, "setPageWithoutAnimation"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 8

    .line 58
    nop

    .line 59
    const-string v0, "registrationName"

    const-string v1, "onPageScroll"

    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 60
    const-string v1, "onPageScrollStateChanged"

    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 61
    const-string v1, "onPageSelected"

    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 58
    const-string v2, "topPageScroll"

    const-string v4, "topPageScrollStateChanged"

    const-string v6, "topPageSelected"

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "AndroidViewPager"

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    check-cast p1, Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;->receiveCommand(Lcom/facebook/react/views/viewpager/ReactViewPager;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/viewpager/ReactViewPager;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p1, "viewPager"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "commandType"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 86
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setCurrentItemFromJs(IZ)V

    .line 87
    return-void

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 90
    const-string v0, "Unsupported command %d received by %s."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_1
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setCurrentItemFromJs(IZ)V

    .line 83
    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;->removeViewAt(Lcom/facebook/react/views/viewpager/ReactViewPager;I)V

    return-void
.end method

.method public removeViewAt(Lcom/facebook/react/views/viewpager/ReactViewPager;I)V
    .locals 0
    .param p1, "parent"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "index"    # I

    .line 114
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->removeViewFromAdapter(I)V

    .line 115
    return-void
.end method

.method public setPageMargin(Lcom/facebook/react/views/viewpager/ReactViewPager;F)V
    .locals 1
    .param p1, "pager"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "margin"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "pageMargin"
    .end annotation

    .line 119
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setPageMargin(I)V

    .line 120
    return-void
.end method

.method public setPeekEnabled(Lcom/facebook/react/views/viewpager/ReactViewPager;Z)V
    .locals 1
    .param p1, "pager"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "peekEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "peekEnabled"
    .end annotation

    .line 124
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setClipToPadding(Z)V

    .line 125
    return-void
.end method

.method public setScrollEnabled(Lcom/facebook/react/views/viewpager/ReactViewPager;Z)V
    .locals 0
    .param p1, "viewPager"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "scrollEnabled"
    .end annotation

    .line 48
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setScrollEnabled(Z)V

    .line 49
    return-void
.end method
