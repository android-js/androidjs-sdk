.class public Lcom/android/js/api/Toast;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Toast.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 16
    iput-object p1, p0, Lcom/android/js/api/Toast;->activity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/android/js/api/Toast;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/js/api/Toast;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/js/api/Toast;->activity:Landroid/app/Activity;

    :cond_0
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

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/js/api/Toast;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/js/api/Toast;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
