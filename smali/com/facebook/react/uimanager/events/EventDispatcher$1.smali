.class final Lcom/facebook/react/uimanager/events/EventDispatcher$1;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/events/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/react/uimanager/events/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/react/uimanager/events/Event;Lcom/facebook/react/uimanager/events/Event;)I
    .locals 8
    .param p1, "lhs"    # Lcom/facebook/react/uimanager/events/Event;
    .param p2, "rhs"    # Lcom/facebook/react/uimanager/events/Event;

    .line 64
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 68
    return v1

    .line 70
    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 71
    return v2

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getTimestampMs()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/facebook/react/uimanager/events/Event;->getTimestampMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 75
    .local v3, "diff":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 76
    return v0

    .line 77
    :cond_3
    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 78
    return v1

    .line 80
    :cond_4
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    check-cast p2, Lcom/facebook/react/uimanager/events/Event;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher$1;->compare(Lcom/facebook/react/uimanager/events/Event;Lcom/facebook/react/uimanager/events/Event;)I

    move-result p1

    return p1
.end method
