.class public Lcom/facebook/cache/common/NoOpCacheErrorLogger;
.super Ljava/lang/Object;
.source "NoOpCacheErrorLogger.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheErrorLogger;


# static fields
.field private static sInstance:Lcom/facebook/cache/common/NoOpCacheErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/cache/common/NoOpCacheErrorLogger;
    .locals 2

    const-class v0, Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    invoke-direct {v1}, Lcom/facebook/cache/common/NoOpCacheErrorLogger;-><init>()V

    sput-object v1, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    .line 25
    :cond_0
    sget-object v1, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/facebook/cache/common/NoOpCacheErrorLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "category"    # Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 41
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
