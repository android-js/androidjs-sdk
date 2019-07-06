.class final Lcom/facebook/react/views/checkbox/ReactCheckBoxManager$1;
.super Ljava/lang/Object;
.source "ReactCheckBoxManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getReactContext(Landroid/widget/CompoundButton;)Lcom/facebook/react/bridge/ReactContext;
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;

    .line 36
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "ctx":Landroid/content/Context;
    instance-of v1, v0, Landroid/support/v7/widget/TintContextWrapper;

    if-eqz v1, :cond_0

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/TintContextWrapper;

    invoke-virtual {v1}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    goto :goto_0

    .line 40
    .end local v1    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 42
    .restart local v1    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager$1;->getReactContext(Landroid/widget/CompoundButton;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 29
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 30
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/views/checkbox/ReactCheckBoxEvent;

    .line 31
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/facebook/react/views/checkbox/ReactCheckBoxEvent;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 32
    return-void
.end method
