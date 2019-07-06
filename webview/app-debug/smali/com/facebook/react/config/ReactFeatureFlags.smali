.class public Lcom/facebook/react/config/ReactFeatureFlags;
.super Ljava/lang/Object;
.source "ReactFeatureFlags.java"


# static fields
.field public static lazilyLoadViewManagers:Z

.field public static useArrayNativeAccessor:Z

.field public static useMapNativeAccessor:Z

.field public static useTurboModules:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->lazilyLoadViewManagers:Z

    .line 27
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useArrayNativeAccessor:Z

    .line 32
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useMapNativeAccessor:Z

    .line 39
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useTurboModules:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
