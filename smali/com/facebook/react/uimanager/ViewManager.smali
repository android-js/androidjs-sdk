.class public abstract Lcom/facebook/react/uimanager/ViewManager;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "ViewManager.java"


# annotations
.annotation build Lcom/facebook/react/uimanager/annotations/ReactPropertyHolder;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "C::",
        "Lcom/facebook/react/uimanager/ReactShadowNode;",
        ">",
        "Lcom/facebook/react/bridge/BaseJavaModule;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "TT;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p2, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ViewManager subclasses must implement createShadowNodeInstance()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 71
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public final createView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "jsResponderHandler"    # Lcom/facebook/react/touch/JSResponderHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "Lcom/facebook/react/touch/JSResponderHandler;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/uimanager/ViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 49
    instance-of v1, v0, Lcom/facebook/react/touch/ReactInterceptingViewGroup;

    if-eqz v1, :cond_0

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/touch/ReactInterceptingViewGroup;

    invoke-interface {v1, p2}, Lcom/facebook/react/touch/ReactInterceptingViewGroup;->setOnInterceptTouchEventListener(Lcom/facebook/react/touch/OnInterceptTouchEventListener;)V

    .line 52
    :cond_0
    return-object v0
.end method

.method protected abstract createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 162
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 181
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 196
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 204
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public getNativeProps()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewManager;->getShadowNodeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->getNativeProps(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getShadowNodeClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public measure(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "localData"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p4, "width"    # F
    .param p5, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p6, "height"    # F
    .param p7, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 226
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public onDropViewInstance(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "root":Landroid/view/View;, "TT;"
    return-void
.end method

.method public abstract updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public updateLocalData(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "localData"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 215
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            ")V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "viewToUpdate":Landroid/view/View;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->updateProps(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 39
    return-void
.end method
