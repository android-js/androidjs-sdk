.class public Lcom/android/js/api/DeepLink;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DeepLink.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 18
    iput-object p1, p0, Lcom/android/js/api/DeepLink;->activity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/android/js/api/DeepLink;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 20
    iget-object v0, p0, Lcom/android/js/api/DeepLink;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/js/api/DeepLink;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/js/api/DeepLink;->activity:Landroid/app/Activity;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/android/js/api/DeepLink;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 28
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "DeepLink"

    return-object v0
.end method
