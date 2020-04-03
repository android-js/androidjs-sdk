.class Lcom/facebook/react/fabric/jsi/EventBeatManager$1;
.super Ljava/lang/Object;
.source "EventBeatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/jsi/EventBeatManager;->dispatchEventsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/jsi/EventBeatManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/jsi/EventBeatManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/facebook/react/fabric/jsi/EventBeatManager$1;->this$0:Lcom/facebook/react/fabric/jsi/EventBeatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/facebook/react/fabric/jsi/EventBeatManager$1;->this$0:Lcom/facebook/react/fabric/jsi/EventBeatManager;

    invoke-static {v0}, Lcom/facebook/react/fabric/jsi/EventBeatManager;->access$000(Lcom/facebook/react/fabric/jsi/EventBeatManager;)V

    return-void
.end method
