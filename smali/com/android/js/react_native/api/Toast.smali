.class public Lcom/android/js/react_native/api/Toast;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Toast.java"


# instance fields
.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private toast:Lcom/android/js/api/Toast;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 13
    iput-object p1, p0, Lcom/android/js/react_native/api/Toast;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    new-instance v0, Lcom/android/js/api/Toast;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/js/api/Toast;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Toast;->toast:Lcom/android/js/api/Toast;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Toast"

    return-object v0
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/js/react_native/api/Toast;->toast:Lcom/android/js/api/Toast;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Toast;->showToast(Ljava/lang/String;I)V

    return-void
.end method
