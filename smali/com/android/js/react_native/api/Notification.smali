.class public Lcom/android/js/react_native/api/Notification;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Notification.java"


# instance fields
.field private iconId:I

.field private notification:Lcom/android/js/api/Notification;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "iconId"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 14
    iput-object p1, p0, Lcom/android/js/react_native/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 15
    iput p2, p0, Lcom/android/js/react_native/api/Notification;->iconId:I

    .line 16
    new-instance v0, Lcom/android/js/api/Notification;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/js/react_native/api/Notification;->iconId:I

    const-string v3, "com.android.js.react_native.MainActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/js/api/Notification;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Notification;->notification:Lcom/android/js/api/Notification;

    .line 17
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "Notification"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/js/react_native/api/Notification;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/js/react_native/api/Notification;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public showNotification(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/js/react_native/api/Notification;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Notification;->showNotification(I)V

    .line 27
    return-void
.end method
