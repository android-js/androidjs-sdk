.class public Lcom/android/js/webview/MainActivity;
.super Lcom/android/js/webview/AndroidJSActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/js/webview/AndroidJSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Lcom/android/js/webview/AndroidJSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/js/webview/MainActivity;->setContentView(I)V

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 22
    invoke-static {p0, p0}, Lcom/android/js/other/PermissionRequest;->checkAndAskForPermissions(Landroid/app/Activity;Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, p0}, Lcom/android/js/webview/MainActivity;->start_node(Landroid/app/Activity;)V

    .line 30
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/js/webview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/js/webview/MainActivity;->myWebView:Landroid/webkit/WebView;

    .line 32
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/android/js/webview/MainActivity;->configureWebview(I)V

    .line 34
    return-void
.end method
