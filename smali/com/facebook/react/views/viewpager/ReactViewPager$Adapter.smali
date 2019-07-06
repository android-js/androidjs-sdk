.class Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ReactViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/viewpager/ReactViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private mIsViewPagerInIntentionallyInconsistentState:Z

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/views/viewpager/ReactViewPager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    .line 34
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mIsViewPagerInIntentionallyInconsistentState:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/viewpager/ReactViewPager;Lcom/facebook/react/views/viewpager/ReactViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "x1"    # Lcom/facebook/react/views/viewpager/ReactViewPager$1;

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;-><init>(Lcom/facebook/react/views/viewpager/ReactViewPager;)V

    return-void
.end method


# virtual methods
.method addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 37
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->notifyDataSetChanged()V

    .line 47
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    iget-object v1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setOffscreenPageLimit(I)V

    .line 48
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 110
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 97
    iget-boolean v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mIsViewPagerInIntentionallyInconsistentState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    .line 98
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method getViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 86
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 103
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 104
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$000(Lcom/facebook/react/views/viewpager/ReactViewPager;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 115
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeAllViewsFromAdapter(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .line 78
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mIsViewPagerInIntentionallyInconsistentState:Z

    .line 83
    return-void
.end method

.method removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 51
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->notifyDataSetChanged()V

    .line 56
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    iget-object v1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->setOffscreenPageLimit(I)V

    .line 57
    return-void
.end method

.method setViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->notifyDataSetChanged()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$Adapter;->mIsViewPagerInIntentionallyInconsistentState:Z

    .line 70
    return-void
.end method
