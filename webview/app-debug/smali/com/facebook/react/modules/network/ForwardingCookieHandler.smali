.class public Lcom/facebook/react/modules/network/ForwardingCookieHandler;
.super Ljava/net/CookieHandler;
.source "ForwardingCookieHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;
    }
.end annotation


# static fields
.field private static final COOKIE_HEADER:Ljava/lang/String; = "Cookie"

.field private static final USES_LEGACY_STORE:Z

.field private static final VERSION_ONE_HEADER:Ljava/lang/String; = "Set-cookie2"

.field private static final VERSION_ZERO_HEADER:Ljava/lang/String; = "Set-cookie"


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private mCookieManager:Landroid/webkit/CookieManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    .line 51
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 53
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)V

    iput-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)Landroid/webkit/CookieManager;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    .line 39
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    .line 39
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ForwardingCookieHandler;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addCookieAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 155
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 158
    :cond_0
    return-void
.end method

.method private addCookies(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 130
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    sget-boolean v1, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Lcom/facebook/react/modules/network/ForwardingCookieHandler$3;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$3;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Ljava/util/List;Landroid/webkit/CookieManager;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->runInBackground(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 144
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "cookie":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->addCookieAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v2    # "cookie":Ljava/lang/String;
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 148
    iget-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    invoke-virtual {v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;->onCookiesModified()V

    .line 150
    :goto_1
    return-void
.end method

.method private clearCookiesAsync(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 105
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 106
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lcom/facebook/react/modules/network/ForwardingCookieHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$2;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 116
    :cond_0
    return-void
.end method

.method private getCookieManager()Landroid/webkit/CookieManager;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->possiblyWorkaroundSyncManager(Landroid/content/Context;)V

    .line 181
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 198
    sget-boolean v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "No WebView installed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    return-object v0

    .line 194
    :cond_0
    throw v1

    .line 182
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    return-object v0

    .line 203
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    return-object v0
.end method

.method private static isCookieHeader(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 161
    const-string v0, "Set-cookie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Set-cookie2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static possiblyWorkaroundSyncManager(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 207
    sget-boolean v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 212
    .local v0, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 214
    .end local v0    # "syncManager":Landroid/webkit/CookieSyncManager;
    :cond_0
    return-void
.end method

.method private runInBackground(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$4;

    iget-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$4;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 170
    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    return-void
.end method


# virtual methods
.method public clearCookies(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 82
    sget-boolean v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;

    iget-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 98
    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->clearCookiesAsync(Lcom/facebook/react/bridge/Callback;)V

    .line 102
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 119
    sget-boolean v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->USES_LEGACY_STORE:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 121
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    invoke-virtual {v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;->persistCookies()V

    .line 126
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_1
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 60
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "cookies":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 67
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Cookie"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "url":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->isCookieHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v0, v4}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->addCookies(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
