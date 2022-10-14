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
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lcom/android/js/webview/AndroidJSActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->setContentView(I)V

    .line 21
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 22
    invoke-static {p0, p0}, Lcom/android/js/other/PermissionRequest;->checkAndAskForPermissions(Landroid/app/Activity;Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, p0}, Lcom/android/js/webview/MainActivity;->start_node(Landroid/app/Activity;)V

    const p1, 0x7f0700d3

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/android/js/webview/MainActivity;->myWebView:Landroid/webkit/WebView;

    const/high16 p1, 0x7f0a0000

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->configureWebview(I)V

    return-void
.end method
