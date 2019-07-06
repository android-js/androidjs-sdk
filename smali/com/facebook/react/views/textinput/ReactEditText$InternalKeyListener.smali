.class Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;
.super Ljava/lang/Object;
.source "ReactEditText.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalKeyListener"
.end annotation


# instance fields
.field private mInputType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;->mInputType:I

    .line 724
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 761
    invoke-static {}, Lcom/facebook/react/views/textinput/ReactEditText;->access$400()Landroid/text/method/KeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V

    .line 762
    return-void
.end method

.method public getInputType()I
    .locals 1

    .line 736
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;->mInputType:I

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 746
    invoke-static {}, Lcom/facebook/react/views/textinput/ReactEditText;->access$400()Landroid/text/method/KeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 756
    invoke-static {}, Lcom/facebook/react/views/textinput/ReactEditText;->access$400()Landroid/text/method/KeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 751
    invoke-static {}, Lcom/facebook/react/views/textinput/ReactEditText;->access$400()Landroid/text/method/KeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    .line 727
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;->mInputType:I

    .line 728
    return-void
.end method
