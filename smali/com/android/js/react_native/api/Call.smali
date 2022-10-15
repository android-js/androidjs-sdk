.class public Lcom/android/js/react_native/api/Call;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Call.java"


# instance fields
.field private call:Lcom/android/js/api/Call;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 13
    iput-object p1, p0, Lcom/android/js/react_native/api/Call;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    new-instance v0, Lcom/android/js/api/Call;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/js/api/Call;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Call;->call:Lcom/android/js/api/Call;

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

.method public makeCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/js/react_native/api/Call;->call:Lcom/android/js/api/Call;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Call;->makeCall(Ljava/lang/String;)V

    .line 20
    return-void
.end method
