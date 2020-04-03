.class public Lcom/android/js/react_native/AndroidJSActivity;
.super Lcom/facebook/react/ReactActivity;
.source "AndroidJSActivity.java"


# static fields
.field public static _startedNodeAlready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "node"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/android/js/react_native/AndroidJSActivity;->_startedNodeAlready:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "androidjs_core_react_native"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public native startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public start_node(Landroid/app/Activity;)V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/android/js/react_native/AndroidJSActivity;->_startedNodeAlready:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/android/js/react_native/AndroidJSActivity;->_startedNodeAlready:Z

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/js/react_native/AndroidJSActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/js/react_native/AndroidJSActivity$1;-><init>(Lcom/android/js/react_native/AndroidJSActivity;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
