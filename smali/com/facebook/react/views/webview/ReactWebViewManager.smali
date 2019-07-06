.class public Lcom/facebook/react/views/webview/ReactWebViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactWebViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;,
        Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BLANK_URL:Ljava/lang/String; = "about:blank"

.field protected static final BRIDGE_NAME:Ljava/lang/String; = "__REACT_WEB_VIEW_BRIDGE"

.field public static final COMMAND_GO_BACK:I = 0x1

.field public static final COMMAND_GO_FORWARD:I = 0x2

.field public static final COMMAND_INJECT_JAVASCRIPT:I = 0x6

.field public static final COMMAND_POST_MESSAGE:I = 0x5

.field public static final COMMAND_RELOAD:I = 0x3

.field public static final COMMAND_STOP_LOADING:I = 0x4

.field protected static final HTML_ENCODING:Ljava/lang/String; = "UTF-8"

.field protected static final HTML_MIME_TYPE:Ljava/lang/String; = "text/html"

.field protected static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field private static final INTENT_URL_PREFIX:Ljava/lang/String; = "intent://"

.field public static final REACT_CLASS:Ljava/lang/String; = "RCTWebView"


# instance fields
.field protected mPictureListener:Landroid/webkit/WebView$PictureListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 399
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 400
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$1;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    iput-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    .line 404
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/webview/WebViewConfig;)V
    .locals 0
    .param p1, "webViewConfig"    # Lcom/facebook/react/views/webview/WebViewConfig;

    .line 406
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    .line 408
    return-void
.end method

.method protected static dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .line 732
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 733
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 734
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 735
    .local v1, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 736
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 81
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Landroid/webkit/WebView;

    .line 648
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    invoke-direct {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;-><init>()V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 649
    return-void
.end method

.method protected createReactWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 416
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;
    .locals 5
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->createReactWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    move-result-object v0

    .line 423
    .local v0, "webView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    new-instance v1, Lcom/facebook/react/views/webview/ReactWebViewManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$2;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 440
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 441
    iget-object v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    invoke-interface {v1, v0}, Lcom/facebook/react/views/webview/WebViewConfig;->configWebView(Landroid/webkit/WebView;)V

    .line 442
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 443
    .local v1, "settings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 444
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 445
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 447
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 448
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 449
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 450
    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebView;Z)V

    .line 451
    const-string v2, "never"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setMixedContentMode(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 454
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setGeolocationEnabled(Landroid/webkit/WebView;Ljava/lang/Boolean;)V

    .line 460
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 13
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

    .line 653
    nop

    .line 654
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 655
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 656
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 657
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 658
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 659
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 653
    const-string v1, "goBack"

    const-string v3, "goForward"

    const-string v5, "reload"

    const-string v7, "stopLoading"

    const-string v9, "postMessage"

    const-string v11, "injectJavaScript"

    invoke-static/range {v1 .. v12}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 412
    const-string v0, "RCTWebView"

    return-object v0
.end method

.method protected getPictureListener()Landroid/webkit/WebView$PictureListener;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$3;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    iput-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 81
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->onDropViewInstance(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onDropViewInstance(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 709
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 710
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 711
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 712
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->cleanupCallbacksAndDestroy()V

    .line 713
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/webview/ReactWebViewManager;->receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "root"    # Landroid/webkit/WebView;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 664
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 701
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 702
    .local v1, "reactWebView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    .end local v1    # "reactWebView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    :pswitch_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 680
    .restart local v1    # "reactWebView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 681
    .local v2, "eventInitDict":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function () {var event;var data = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";try {event = new MessageEvent(\'message\', data);} catch (e) {event = document.createEvent(\'MessageEvent\');event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);}document.dispatchEvent(event);})();"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-virtual {v1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v1    # "reactWebView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    .end local v2    # "eventInitDict":Lorg/json/JSONObject;
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 675
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 676
    goto :goto_0

    .line 672
    :pswitch_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 673
    goto :goto_0

    .line 669
    :pswitch_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    .line 670
    goto :goto_0

    .line 666
    :pswitch_5
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 667
    nop

    .line 705
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllowFileAccess(Landroid/webkit/WebView;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "allowFileAccess"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccess"
    .end annotation

    .line 625
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 626
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "allow"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowUniversalAccessFromFileURLs"
    .end annotation

    .line 514
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 515
    return-void
.end method

.method public setDomStorageEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "domStorageEnabled"
    .end annotation

    .line 495
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 496
    return-void
.end method

.method public setGeolocationEnabled(Landroid/webkit/WebView;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isGeolocationEnabled"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "geolocationEnabled"
    .end annotation

    .line 630
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 631
    return-void
.end method

.method public setInjectedJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "injectedJavaScript"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    .line 524
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {v0, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setInjectedJavaScript(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public setJavaScriptEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptEnabled"
    .end annotation

    .line 478
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 479
    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "requires"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mediaPlaybackRequiresUserAction"
    .end annotation

    .line 509
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 510
    return-void
.end method

.method public setMessagingEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingEnabled"
    .end annotation

    .line 529
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {v0, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setMessagingEnabled(Z)V

    .line 530
    return-void
.end method

.method public setMixedContentMode(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "mixedContentMode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mixedContentMode"
    .end annotation

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 604
    if-eqz p2, :cond_2

    const-string v0, "never"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    const-string v0, "always"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_1

    .line 608
    :cond_1
    const-string v0, "compatibility"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_1

    .line 605
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 612
    :cond_3
    :goto_1
    return-void
.end method

.method public setOnContentSizeChange(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "sendContentSizeChangeEvents"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onContentSizeChange"
    .end annotation

    .line 594
    if-eqz p2, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->getPictureListener()Landroid/webkit/WebView$PictureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_0

    .line 597
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 599
    :goto_0
    return-void
.end method

.method public setOriginWhitelist(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "originWhitelist"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "originWhitelist"
    .end annotation

    .line 635
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getReactWebViewClient()Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    move-result-object v0

    .line 636
    .local v0, "client":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 637
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 638
    .local v1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 639
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->setOriginWhitelist(Ljava/util/List;)V

    .line 643
    .end local v1    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    :cond_1
    return-void
.end method

.method public setSaveFormDataDisabled(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "disable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "saveFormDataDisabled"
    .end annotation

    .line 519
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 520
    return-void
.end method

.method public setScalesPageToFit(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scalesPageToFit"
    .end annotation

    .line 490
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 491
    return-void
.end method

.method public setSource(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "source"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    .line 534
    if-eqz p2, :cond_9

    .line 535
    const-string v0, "html"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UTF-8"

    if-eqz v1, :cond_1

    .line 536
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "html":Ljava/lang/String;
    const-string v1, "baseUrl"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    nop

    .line 539
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 538
    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p1

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_0
    const-string v1, "text/html"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 545
    .end local v0    # "html":Ljava/lang/String;
    :cond_1
    const-string v0, "uri"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 546
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "previousUrl":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 549
    return-void

    .line 551
    :cond_2
    const-string v3, "method"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 552
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "method":Ljava/lang/String;
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 554
    const/4 v4, 0x0

    .line 555
    .local v4, "postData":[B
    const-string v5, "body"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 556
    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "body":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    .line 561
    goto :goto_1

    .line 559
    :catch_0
    move-exception v2

    .line 560
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 563
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "body":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 564
    const/4 v2, 0x0

    new-array v4, v2, [B

    .line 566
    :cond_4
    invoke-virtual {p1, v0, v4}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 567
    return-void

    .line 570
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "postData":[B
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v2, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "headers"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 572
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 573
    .local v3, "headers":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v4

    .line 574
    .local v4, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_2
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 575
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "user-agent"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 577
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 578
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_3

    .line 581
    :cond_6
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .end local v5    # "key":Ljava/lang/String;
    :cond_7
    :goto_3
    goto :goto_2

    .line 585
    .end local v3    # "headers":Lcom/facebook/react/bridge/ReadableMap;
    .end local v4    # "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_8
    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 586
    return-void

    .line 589
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "previousUrl":Ljava/lang/String;
    .end local v2    # "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public setThirdPartyCookiesEnabled(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thirdPartyCookiesEnabled"
    .end annotation

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 484
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 486
    :cond_0
    return-void
.end method

.method public setUrlPrefixesForDefaultIntent(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlPrefixesForDefaultIntent"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "urlPrefixesForDefaultIntent"
    .end annotation

    .line 617
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getReactWebViewClient()Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    move-result-object v0

    .line 618
    .local v0, "client":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 619
    invoke-virtual {v0, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->setUrlPrefixesForDefaultIntent(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 621
    :cond_0
    return-void
.end method

.method public setUserAgent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    .line 500
    if-eqz p2, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public sethardwareAccelerationEnabledExperimental(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "hardwareAccelerationEnabledExperimental"
    .end annotation

    .line 471
    if-nez p2, :cond_0

    .line 472
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 474
    :cond_0
    return-void
.end method
