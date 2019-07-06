.class public Lcom/facebook/react/uimanager/UIManagerHelper;
.super Ljava/lang/Object;
.source "UIManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;
    .locals 2
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "uiManagerType"    # I

    .line 35
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    .line 36
    .local v0, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-class v1, Lcom/facebook/react/bridge/UIManager;

    .line 37
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/CatalystInstance;->getJSIModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/UIManager;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 38
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/CatalystInstance;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/UIManager;

    .line 36
    :goto_0
    return-object v1
.end method

.method public static getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;
    .locals 1
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "reactTag"    # I

    .line 28
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    return-object v0
.end method
