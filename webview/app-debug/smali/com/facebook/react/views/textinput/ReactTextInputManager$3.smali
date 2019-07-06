.class Lcom/facebook/react/views/textinput/ReactTextInputManager$3;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

.field final synthetic val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

.field final synthetic val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/textinput/ReactTextInputManager;

    .line 866
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 870
    and-int/lit16 v0, p2, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 898
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 899
    .local v3, "v1":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    return v2

    .line 902
    :cond_1
    return v1

    .line 905
    .end local v3    # "v1":Landroid/view/View;
    :cond_2
    return v2

    .line 872
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getBlurOnSubmit()Z

    move-result v0

    .line 873
    .local v0, "blurOnSubmit":Z
    iget-object v3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v3

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 883
    .local v3, "isMultiline":Z
    :goto_1
    iget-object v4, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v5, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 884
    invoke-virtual {v4, v5}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v4

    .line 886
    .local v4, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    new-instance v5, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;

    iget-object v6, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 888
    invoke-virtual {v6}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 889
    invoke-virtual {v7}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;-><init>(ILjava/lang/String;)V

    .line 886
    invoke-virtual {v4, v5}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 891
    if-eqz v0, :cond_5

    .line 892
    iget-object v5, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v5}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocus()V

    .line 896
    :cond_5
    if-nez v0, :cond_6

    if-nez v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method
