.class Lcom/facebook/react/views/textinput/ReactTextInputManager$1;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;->setContextMenuHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

.field final synthetic val$_contextMenuHidden:Z


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/textinput/ReactTextInputManager;

    .line 427
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

    iput-boolean p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->val$_contextMenuHidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 429
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->val$_contextMenuHidden:Z

    return v0
.end method
