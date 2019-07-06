.class public Lcom/facebook/react/fabric/FabricEventEmitter;
.super Ljava/lang/Object;
.source "FabricEventEmitter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTEventEmitter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mUIManager:Lcom/facebook/react/fabric/FabricUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/facebook/react/fabric/FabricEventEmitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/fabric/FabricEventEmitter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/fabric/FabricUIManager;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricEventEmitter;->mUIManager:Lcom/facebook/react/fabric/FabricUIManager;

    .line 36
    return-void
.end method

.method private copyWritableArray(Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3
    .param p1, "array"    # Lcom/facebook/react/bridge/WritableArray;

    .line 81
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 82
    .local v0, "ret":Lcom/facebook/react/bridge/WritableNativeArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/react/fabric/FabricEventEmitter;->getWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p1, "readableMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 148
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 149
    .local v0, "map":Lcom/facebook/react/bridge/WritableNativeMap;
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 150
    return-object v0
.end method

.method private removeTouchesAtIndices(Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)Landroid/util/Pair;
    .locals 6
    .param p1, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p2, "indices"    # Lcom/facebook/react/bridge/WritableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/WritableArray;",
            "Lcom/facebook/react/bridge/WritableArray;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/react/bridge/WritableArray;",
            "Lcom/facebook/react/bridge/WritableArray;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 107
    .local v0, "rippedOut":Lcom/facebook/react/bridge/WritableArray;
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 108
    .local v1, "tempTouches":Lcom/facebook/react/bridge/WritableArray;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v2, "rippedOutIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 110
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/WritableArray;->getInt(I)I

    move-result v4

    .line 111
    .local v4, "index":I
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/react/fabric/FabricEventEmitter;->getWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/react/fabric/FabricEventEmitter;->getWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 114
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "j":I
    :cond_2
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private touchSubsequence(Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)Landroid/util/Pair;
    .locals 3
    .param p1, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p2, "changedIndices"    # Lcom/facebook/react/bridge/WritableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/WritableArray;",
            "Lcom/facebook/react/bridge/WritableArray;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/react/bridge/WritableArray;",
            "Lcom/facebook/react/bridge/WritableArray;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 135
    .local v0, "result":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/WritableArray;->getInt(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/react/fabric/FabricEventEmitter;->getWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FabricEventEmitter.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricEventEmitter;->mUIManager:Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/fabric/FabricUIManager;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 44
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 45
    return-void
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 9
    .param p1, "eventTopLevelType"    # Ljava/lang/String;
    .param p2, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p3, "changedIndices"    # Lcom/facebook/react/bridge/WritableArray;

    .line 50
    nop

    .line 51
    const-string v0, "topTouchEnd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "topTouchCancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/react/fabric/FabricEventEmitter;->touchSubsequence(Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/react/fabric/FabricEventEmitter;->removeTouchesAtIndices(Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)Landroid/util/Pair;

    move-result-object v0

    .line 54
    :goto_1
    nop

    .line 56
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/react/bridge/WritableArray;

    .line 57
    .local v1, "changedTouches":Lcom/facebook/react/bridge/WritableArray;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p2, v2

    check-cast p2, Lcom/facebook/react/bridge/WritableArray;

    .line 59
    const/4 v2, 0x0

    .local v2, "jj":I
    :goto_2
    invoke-interface {v1}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 60
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/react/fabric/FabricEventEmitter;->getWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 64
    .local v3, "touch":Lcom/facebook/react/bridge/WritableMap;
    invoke-direct {p0, v1}, Lcom/facebook/react/fabric/FabricEventEmitter;->copyWritableArray(Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    const-string v5, "changedTouches"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 65
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/FabricEventEmitter;->copyWritableArray(Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    const-string v5, "touches"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 66
    move-object v4, v3

    .line 67
    .local v4, "nativeEvent":Lcom/facebook/react/bridge/WritableMap;
    const/4 v5, 0x0

    .line 68
    .local v5, "rootNodeID":I
    const-string v6, "target"

    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "target":I
    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 70
    sget-object v7, Lcom/facebook/react/fabric/FabricEventEmitter;->TAG:Ljava/lang/String;

    const-string v8, "A view is reporting that a touch occurred on tag zero."

    invoke-static {v7, v8}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 72
    :cond_2
    move v5, v6

    .line 75
    :goto_3
    invoke-virtual {p0, v5, p1, v3}, Lcom/facebook/react/fabric/FabricEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 59
    .end local v3    # "touch":Lcom/facebook/react/bridge/WritableMap;
    .end local v4    # "nativeEvent":Lcom/facebook/react/bridge/WritableMap;
    .end local v5    # "rootNodeID":I
    .end local v6    # "target":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 77
    .end local v2    # "jj":I
    :cond_3
    return-void
.end method
