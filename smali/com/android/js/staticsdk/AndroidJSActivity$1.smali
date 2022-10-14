.class Lcom/android/js/staticsdk/AndroidJSActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "AndroidJSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/staticsdk/AndroidJSActivity;->configureWebview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/js/staticsdk/AndroidJSActivity;


# direct methods
.method constructor <init>(Lcom/android/js/staticsdk/AndroidJSActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/js/staticsdk/AndroidJSActivity$1;->this$0:Lcom/android/js/staticsdk/AndroidJSActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    .line 63
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p3

    .line 64
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "req:"

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance p2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method
