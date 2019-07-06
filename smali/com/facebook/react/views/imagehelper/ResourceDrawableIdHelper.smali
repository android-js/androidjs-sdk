.class public Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
.super Ljava/lang/Object;
.source "ResourceDrawableIdHelper.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final LOCAL_RESOURCE_SCHEME:Ljava/lang/String; = "res"

.field private static volatile sResourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;


# instance fields
.field private mResourceDrawableIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->mResourceDrawableIdMap:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    .locals 2

    .line 36
    sget-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->sResourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->sResourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    invoke-direct {v1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;-><init>()V

    sput-object v1, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->sResourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->sResourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->mResourceDrawableIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    .end local p0    # "this":Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "resId":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .end local p2    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 59
    :catch_0
    move-exception p2

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object p2, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->mResourceDrawableIdMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 65
    iget-object p2, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->mResourceDrawableIdMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    monitor-exit p0

    return p2

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v1, "drawable"

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 71
    .local p2, "id":I
    iget-object v1, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->mResourceDrawableIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit p0

    return p2

    .line 73
    .end local p2    # "id":I
    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 52
    .end local v0    # "name":Ljava/lang/String;
    .local p2, "name":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResourceDrawableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "resId":I
    if-lez v0, :cond_0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 84
    const-string v2, "res"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 85
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 83
    :goto_0
    return-object v1
.end method
