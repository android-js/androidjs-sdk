.class Lcom/facebook/react/modules/core/Timing$1;
.super Ljava/lang/Object;
.source "Timing.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/core/Timing;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/react/modules/core/Timing$Timer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/core/Timing;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/core/Timing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/core/Timing;

    .line 190
    iput-object p1, p0, Lcom/facebook/react/modules/core/Timing$1;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/react/modules/core/Timing$Timer;Lcom/facebook/react/modules/core/Timing$Timer;)I
    .locals 5
    .param p1, "lhs"    # Lcom/facebook/react/modules/core/Timing$Timer;
    .param p2, "rhs"    # Lcom/facebook/react/modules/core/Timing$Timer;

    .line 193
    invoke-static {p1}, Lcom/facebook/react/modules/core/Timing$Timer;->access$400(Lcom/facebook/react/modules/core/Timing$Timer;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/facebook/react/modules/core/Timing$Timer;->access$400(Lcom/facebook/react/modules/core/Timing$Timer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 194
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 195
    const/4 v2, 0x0

    return v2

    .line 196
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 197
    const/4 v2, -0x1

    return v2

    .line 199
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 190
    check-cast p1, Lcom/facebook/react/modules/core/Timing$Timer;

    check-cast p2, Lcom/facebook/react/modules/core/Timing$Timer;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/modules/core/Timing$1;->compare(Lcom/facebook/react/modules/core/Timing$Timer;Lcom/facebook/react/modules/core/Timing$Timer;)I

    move-result p1

    return p1
.end method
