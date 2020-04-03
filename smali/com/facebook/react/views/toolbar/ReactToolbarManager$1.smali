.class Lcom/facebook/react/views/toolbar/ReactToolbarManager$1;
.super Ljava/lang/Object;
.source "ReactToolbarManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/toolbar/ReactToolbarManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/toolbar/ReactToolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/toolbar/ReactToolbarManager;

.field final synthetic val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field final synthetic val$view:Lcom/facebook/react/views/toolbar/ReactToolbar;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/toolbar/ReactToolbarManager;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/views/toolbar/ReactToolbar;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/facebook/react/views/toolbar/ReactToolbarManager$1;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbarManager;

    iput-object p2, p0, Lcom/facebook/react/views/toolbar/ReactToolbarManager$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iput-object p3, p0, Lcom/facebook/react/views/toolbar/ReactToolbarManager$1;->val$view:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 127
    iget-object p1, p0, Lcom/facebook/react/views/toolbar/ReactToolbarManager$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v0, Lcom/facebook/react/views/toolbar/events/ToolbarClickEvent;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbarManager$1;->val$view:Lcom/facebook/react/views/toolbar/ReactToolbar;

    .line 128
    invoke-virtual {v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getId()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/toolbar/events/ToolbarClickEvent;-><init>(II)V

    .line 127
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
