.class public Lcom/android/js/react_native/AndroidJSPackage;
.super Ljava/lang/Object;
.source "AndroidJSPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# instance fields
.field private iconId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "iconId"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/js/react_native/AndroidJSPackage;->iconId:I

    .line 33
    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v1, Lcom/android/js/react_native/api/App;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/App;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/android/js/react_native/api/Call;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/Call;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/android/js/react_native/api/Hotspot;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/Hotspot;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/android/js/react_native/api/Notification;

    iget v2, p0, Lcom/android/js/react_native/AndroidJSPackage;->iconId:I

    invoke-direct {v1, p1, v2}, Lcom/android/js/react_native/api/Notification;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/android/js/react_native/api/Toast;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/Toast;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/android/js/react_native/api/Wifi;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/Wifi;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/android/js/react_native/api/Contact;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/Contact;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/android/js/react_native/api/DeepLink;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/DeepLink;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/android/js/react_native/api/SMS;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/SMS;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/android/js/react_native/api/Location;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/Location;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/android/js/react_native/api/MobileData;

    invoke-direct {v1, p1}, Lcom/android/js/react_native/api/MobileData;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
