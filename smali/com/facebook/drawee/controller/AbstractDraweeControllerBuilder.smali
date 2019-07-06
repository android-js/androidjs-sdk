.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;"
    }
.end annotation


# static fields
.field private static final NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

.field private static final sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mAutoPlayAnimations:Z

.field private final mBoundControllerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLowResImageRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMultiImageRequests:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOldController:Lcom/facebook/drawee/interfaces/DraweeController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRetainImageOnFailure:Z

.field private mTapToRetryEnabled:Z

.field private mTryCacheOnlyFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p2, "boundControllerListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/drawee/controller/ControllerListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    .line 79
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->init()V

    .line 80
    return-void
.end method

.method protected static generateUniqueControllerId()Ljava/lang/String;
    .locals 2

    .line 320
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 84
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 86
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 89
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 90
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    .line 93
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 94
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContentDescription:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .locals 1

    .line 285
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->validate()V

    .line 288
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 289
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->buildController()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/drawee/interfaces/DraweeController;
    .locals 1

    .line 32
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method protected buildController()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .locals 2

    .line 309
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 310
    .local v0, "controller":Lcom/facebook/drawee/controller/AbstractDraweeController;
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getRetainImageOnFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setRetainImageOnFailure(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setContentDescription(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getControllerViewportVisibilityListener()Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setControllerViewportVisibilityListener(Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;)V

    .line 313
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeBuildAndSetRetryManager(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeAttachListeners(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 315
    return-object v0
.end method

.method public getAutoPlayAnimations()Z
    .locals 1

    .line 229
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    return v0
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 113
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 266
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 440
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 241
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    return-object v0
.end method

.method public getControllerViewportVisibilityListener()Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 254
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    return-object v0
.end method

.method protected abstract getDataSourceForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;"
        }
    .end annotation
.end method

.method public getDataSourceSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 196
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method protected getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .locals 1
    .param p1, "controller"    # Lcom/facebook/drawee/interfaces/DraweeController;
    .param p2, "controllerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "TREQUEST;)",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p3, "imageRequest":Ljava/lang/Object;, "TREQUEST;"
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->FULL_FETCH:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;
    .locals 9
    .param p1, "controller"    # Lcom/facebook/drawee/interfaces/DraweeController;
    .param p2, "controllerId"    # Ljava/lang/String;
    .param p4, "cacheLevel"    # Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p3, "imageRequest":Ljava/lang/Object;, "TREQUEST;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getCallerContext()Ljava/lang/Object;

    move-result-object v7

    .line 391
    .local v7, "callerContext":Ljava/lang/Object;
    new-instance v8, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V

    return-object v8
.end method

.method protected getFirstAvailableDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;
    .locals 4
    .param p1, "controller"    # Lcom/facebook/drawee/interfaces/DraweeController;
    .param p2, "controllerId"    # Ljava/lang/String;
    .param p4, "tryBitmapCacheOnlyFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "[TREQUEST;Z)",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p3, "imageRequests":[Ljava/lang/Object;, "[TREQUEST;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v0, "suppliers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;>;"
    if-eqz p4, :cond_0

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 366
    aget-object v2, p3, v1

    sget-object v3, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 367
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 372
    aget-object v2, p3, v1

    invoke-virtual {p0, p1, p2, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/facebook/datasource/FirstAvailableDataSourceSupplier;->create(Ljava/util/List;)Lcom/facebook/datasource/FirstAvailableDataSourceSupplier;

    move-result-object v1

    return-object v1
.end method

.method public getFirstAvailableImageRequests()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 175
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    return-object v0
.end method

.method public getImageRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getLowResImageRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 137
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldController()Lcom/facebook/drawee/interfaces/DraweeController;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 279
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    return-object v0
.end method

.method public getRetainImageOnFailure()Z
    .locals 1

    .line 218
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mRetainImageOnFailure:Z

    return v0
.end method

.method public getTapToRetryEnabled()Z
    .locals 1

    .line 207
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    return v0
.end method

.method protected final getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    return-object p0
.end method

.method protected maybeAttachListeners(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .locals 2
    .param p1, "controller"    # Lcom/facebook/drawee/controller/AbstractDraweeController;

    .line 407
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/controller/ControllerListener;

    .line 409
    .local v1, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 410
    .end local v1    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 415
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    if-eqz v0, :cond_2

    .line 416
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 418
    :cond_2
    return-void
.end method

.method protected maybeBuildAndSetGestureDetector(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .locals 2
    .param p1, "controller"    # Lcom/facebook/drawee/controller/AbstractDraweeController;

    .line 431
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getGestureDetector()Lcom/facebook/drawee/gestures/GestureDetector;

    move-result-object v0

    .line 432
    .local v0, "gestureDetector":Lcom/facebook/drawee/gestures/GestureDetector;
    if-nez v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/drawee/gestures/GestureDetector;->newInstance(Landroid/content/Context;)Lcom/facebook/drawee/gestures/GestureDetector;

    move-result-object v0

    .line 434
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setGestureDetector(Lcom/facebook/drawee/gestures/GestureDetector;)V

    .line 436
    :cond_0
    return-void
.end method

.method protected maybeBuildAndSetRetryManager(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .locals 2
    .param p1, "controller"    # Lcom/facebook/drawee/controller/AbstractDraweeController;

    .line 422
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getRetryManager()Lcom/facebook/drawee/components/RetryManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/RetryManager;->setTapToRetryEnabled(Z)V

    .line 426
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeBuildAndSetGestureDetector(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 427
    return-void
.end method

.method protected abstract obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation
.end method

.method protected obtainDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;)Lcom/facebook/common/internal/Supplier;
    .locals 3
    .param p1, "controller"    # Lcom/facebook/drawee/interfaces/DraweeController;
    .param p2, "controllerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_0

    .line 327
    return-object v0

    .line 330
    :cond_0
    const/4 v0, 0x0

    .line 333
    .local v0, "supplier":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;"
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 336
    iget-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 337
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getFirstAvailableDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    .line 342
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .local v1, "suppliers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->create(Ljava/util/List;Z)Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    move-result-object v0

    .line 350
    .end local v1    # "suppliers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 351
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->getFailedDataSourceSupplier(Ljava/lang/Throwable;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    .line 354
    :cond_4
    return-object v0
.end method

.method public reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->init()V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    .line 224
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .locals 0

    .line 32
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContentDescription:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, "controllerListener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 235
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setControllerViewportVisibilityListener(Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "controllerViewportVisibilityListener"    # Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    .line 248
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDataSourceSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1    # Lcom/facebook/common/internal/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, "dataSourceSupplier":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    .line 185
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFirstAvailableImageRequests([Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, "firstAvailableImageRequests":[Ljava/lang/Object;, "[TREQUEST;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setFirstAvailableImageRequests([Ljava/lang/Object;Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFirstAvailableImageRequests([Ljava/lang/Object;Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 2
    .param p2, "tryCacheOnlyFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, "firstAvailableImageRequests":[Ljava/lang/Object;, "[TREQUEST;"
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "No requests specified!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 163
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    .line 164
    iput-boolean p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 165
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, "imageRequest":Ljava/lang/Object;, "TREQUEST;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLowResImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, "lowResImageRequest":Ljava/lang/Object;, "TREQUEST;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "oldController"    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 273
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .locals 0
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRetainImageOnFailure(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mRetainImageOnFailure:Z

    .line 213
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTapToRetryEnabled(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    .line 202
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 4

    .line 298
    .local p0, "this":Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;, "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 305
    return-void
.end method
