.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;
.super Landroid/view/ViewGroup;
.source "ReactHorizontalScrollContainerView.java"


# instance fields
.field private mCurrentWidth:I

.field private mLayoutDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    nop

    .line 23
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    .line 25
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 29
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "newLeft":I
    sub-int v1, p4, p2

    .line 34
    .local v1, "width":I
    add-int v2, v0, v1

    .line 35
    .local v2, "newRight":I
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setLeft(I)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setRight(I)V

    .line 39
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    .line 41
    .local v3, "parent":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    sub-int/2addr v4, v5

    .line 42
    .local v4, "offsetX":I
    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 44
    .end local v0    # "newLeft":I
    .end local v1    # "width":I
    .end local v2    # "newRight":I
    .end local v3    # "parent":Landroid/widget/HorizontalScrollView;
    .end local v4    # "offsetX":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    .line 45
    return-void
.end method
