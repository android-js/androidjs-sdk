.class Lcom/facebook/react/views/modal/ReactModalHostView$1;
.super Ljava/lang/Object;
.source "ReactModalHostView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/modal/ReactModalHostView;->showOrUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/modal/ReactModalHostView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/modal/ReactModalHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/modal/ReactModalHostView;

    .line 233
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 236
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 241
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    .line 243
    invoke-static {v0}, Lcom/facebook/react/views/modal/ReactModalHostView;->access$000(Lcom/facebook/react/views/modal/ReactModalHostView;)Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    move-result-object v0

    .line 242
    const-string v2, "setOnRequestCloseListener must be called by the manager"

    invoke-static {v0, v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-static {v0}, Lcom/facebook/react/views/modal/ReactModalHostView;->access$000(Lcom/facebook/react/views/modal/ReactModalHostView;)Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;->onRequestClose(Landroid/content/DialogInterface;)V

    .line 246
    return v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 251
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 256
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
