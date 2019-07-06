.class public Lcom/facebook/react/bridge/ReactMarker;
.super Ljava/lang/Object;
.source "ReactMarker.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/ReactMarker$MarkerListener;
    }
.end annotation


# static fields
.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ReactMarker$MarkerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/facebook/react/bridge/ReactMarker$MarkerListener;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 33
    sget-object v0, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    sget-object v1, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearMarkerListeners()V
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 49
    sget-object v0, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V
    .locals 2
    .param p0, "name"    # Lcom/facebook/react/bridge/ReactMarkerConstants;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public static logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;I)V
    .locals 1
    .param p0, "name"    # Lcom/facebook/react/bridge/ReactMarkerConstants;
    .param p1, "instanceKey"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public static logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Lcom/facebook/react/bridge/ReactMarkerConstants;
    .param p1, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public static logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Lcom/facebook/react/bridge/ReactMarkerConstants;
    .param p1, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "instanceKey"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 92
    sget-object v0, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    .line 94
    .local v2, "listener":Lcom/facebook/react/bridge/ReactMarker$MarkerListener;
    invoke-interface {v2, p0, p1, p2}, Lcom/facebook/react/bridge/ReactMarker$MarkerListener;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 95
    .end local v2    # "listener":Lcom/facebook/react/bridge/ReactMarker$MarkerListener;
    goto :goto_0

    .line 96
    :cond_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public static logMarker(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static logMarker(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instanceKey"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public static logMarker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public static logMarker(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "instanceKey"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/facebook/react/bridge/ReactMarkerConstants;->valueOf(Ljava/lang/String;)Lcom/facebook/react/bridge/ReactMarkerConstants;

    move-result-object v0

    .line 72
    .local v0, "marker":Lcom/facebook/react/bridge/ReactMarkerConstants;
    invoke-static {v0, p1, p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public static removeListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/facebook/react/bridge/ReactMarker$MarkerListener;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 42
    sget-object v0, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/facebook/react/bridge/ReactMarker;->sListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
