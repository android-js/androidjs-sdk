.class public Lcom/android/js/react_native/api/Location;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Location.java"


# instance fields
.field private location:Lcom/android/js/api/Location;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 13
    iput-object p1, p0, Lcom/android/js/react_native/api/Location;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    new-instance v0, Lcom/android/js/api/Location;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/js/api/Location;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Location;->location:Lcom/android/js/api/Location;

    .line 15
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/js/react_native/api/Location;->location:Lcom/android/js/api/Location;

    invoke-virtual {v0}, Lcom/android/js/api/Location;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "Location"

    return-object v0
.end method
