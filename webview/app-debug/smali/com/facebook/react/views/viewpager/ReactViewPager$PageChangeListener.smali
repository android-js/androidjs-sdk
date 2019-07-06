.class Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;
.super Ljava/lang/Object;
.source "ReactViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/viewpager/ReactViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/views/viewpager/ReactViewPager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/viewpager/ReactViewPager;Lcom/facebook/react/views/viewpager/ReactViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/views/viewpager/ReactViewPager;
    .param p2, "x1"    # Lcom/facebook/react/views/viewpager/ReactViewPager$1;

    .line 119
    invoke-direct {p0, p1}, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;-><init>(Lcom/facebook/react/views/viewpager/ReactViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 138
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 146
    const-string v0, "settling"

    .line 147
    .local v0, "pageScrollState":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "pageScrollState":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported pageScrollState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    const-string v0, "dragging"

    .line 144
    .restart local v0    # "pageScrollState":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0    # "pageScrollState":Ljava/lang/String;
    :cond_2
    const-string v0, "idle"

    .line 141
    .restart local v0    # "pageScrollState":Ljava/lang/String;
    nop

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$100(Lcom/facebook/react/views/viewpager/ReactViewPager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/views/viewpager/PageScrollStateChangedEvent;

    iget-object v3, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    .line 152
    invoke-virtual {v3}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getId()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/facebook/react/views/viewpager/PageScrollStateChangedEvent;-><init>(ILjava/lang/String;)V

    .line 151
    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 153
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 123
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$100(Lcom/facebook/react/views/viewpager/ReactViewPager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/views/viewpager/PageScrollEvent;

    iget-object v2, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    .line 124
    invoke-virtual {v2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/react/views/viewpager/PageScrollEvent;-><init>(IIF)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 125
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 129
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$200(Lcom/facebook/react/views/viewpager/ReactViewPager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$100(Lcom/facebook/react/views/viewpager/ReactViewPager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/views/viewpager/PageSelectedEvent;

    iget-object v2, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    .line 131
    invoke-virtual {v2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/react/views/viewpager/PageSelectedEvent;-><init>(II)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 133
    :cond_0
    return-void
.end method
