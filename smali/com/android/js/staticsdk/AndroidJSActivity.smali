.class public Lcom/android/js/staticsdk/AndroidJSActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AndroidJSActivity.java"


# instance fields
.field public myWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureWebview(I)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/common/JavaWebviewBridge;

    const-string v2, "com.android.js.staticsdk.MainActivity"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/js/common/JavaWebviewBridge;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V

    const-string p1, "android"

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 37
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 38
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 39
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 41
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 43
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 45
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/myapp/views/index.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/android/js/staticsdk/AndroidJSActivity$1;

    invoke-direct {v0, p0}, Lcom/android/js/staticsdk/AndroidJSActivity$1;-><init>(Lcom/android/js/staticsdk/AndroidJSActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/js/staticsdk/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
