.class public Lcom/android/js/react_native/api/App;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "App.java"


# instance fields
.field private app:Lcom/android/js/api/App;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 13
    iput-object p1, p0, Lcom/android/js/react_native/api/App;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    new-instance v0, Lcom/android/js/api/App;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/js/api/App;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/App;->app:Lcom/android/js/api/App;

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "Call"

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/js/react_native/api/App;->app:Lcom/android/js/api/App;

    invoke-virtual {v0, p1}, Lcom/android/js/api/App;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
