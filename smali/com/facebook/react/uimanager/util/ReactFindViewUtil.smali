.class public Lcom/facebook/react/uimanager/util/ReactFindViewUtil;
.super Ljava/lang/Object;
.source "ReactFindViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;,
        Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;
    }
.end annotation


# static fields
.field private static final mOnMultipleViewsFoundListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mOnViewFoundListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnViewFoundListeners:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnMultipleViewsFoundListener:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewListener(Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;)V
    .locals 1
    .param p0, "onViewFoundListener"    # Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;

    .line 100
    sget-object v0, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnViewFoundListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public static addViewsListener(Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;Ljava/util/Set;)V
    .locals 1
    .param p0, "listener"    # Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnMultipleViewsFoundListener:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "nativeId"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->getNativeId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    return-object p0

    .line 68
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 69
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 70
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 73
    return-object v3

    .line 70
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static findView(Landroid/view/View;Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "onViewFoundListener"    # Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;

    .line 88
    invoke-interface {p1}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;->getNativeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;->onViewFound(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->addViewListener(Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;)V

    .line 93
    return-void
.end method

.method private static getNativeId(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 144
    sget v0, Lcom/facebook/react/R$id;->view_tag_native_id:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static notifyViewRendered(Landroid/view/View;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 122
    invoke-static {p0}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->getNativeId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "nativeId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    sget-object v1, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnViewFoundListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;

    .line 129
    .local v2, "listener":Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;
    if-eqz v0, :cond_1

    invoke-interface {v2}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;->getNativeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v2, p0}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;->onViewFound(Landroid/view/View;)V

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 133
    .end local v2    # "listener":Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;
    :cond_1
    goto :goto_0

    .line 135
    :cond_2
    sget-object v2, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnMultipleViewsFoundListener:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 136
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 137
    .local v4, "nativeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;

    invoke-interface {v5, p0, v0}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;->onViewFound(Landroid/view/View;Ljava/lang/String;)V

    .line 140
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "nativeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 141
    :cond_4
    return-void
.end method

.method public static removeViewListener(Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;)V
    .locals 1
    .param p0, "onViewFoundListener"    # Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnViewFoundListener;

    .line 107
    sget-object v0, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnViewFoundListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public static removeViewsListener(Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/facebook/react/uimanager/util/ReactFindViewUtil$OnMultipleViewsFoundListener;

    .line 115
    sget-object v0, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->mOnMultipleViewsFoundListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
