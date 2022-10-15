.class public Lcom/android/js/webview/AndroidJSActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AndroidJSActivity.java"


# static fields
.field public static _startedNodeAlready:Z


# instance fields
.field public myWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const-string v0, "node"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureWebview(I)V
    .locals 3
    .param p1, "iconId"    # I

    .line 76
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/common/JavaWebviewBridge;

    const-string v2, "com.android.js.webview.MainActivity"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/js/common/JavaWebviewBridge;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 82
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 87
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/myapp/views/index.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/webview/AndroidJSActivity$2;

    invoke-direct {v1, p0}, Lcom/android/js/webview/AndroidJSActivity$2;-><init>(Lcom/android/js/webview/AndroidJSActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 117
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 41
    :goto_0
    return-void
.end method

.method public native startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public start_node(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 49
    sget-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/js/webview/AndroidJSActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/js/webview/AndroidJSActivity$1;-><init>(Lcom/android/js/webview/AndroidJSActivity;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    :cond_0
    return-void
.end method
