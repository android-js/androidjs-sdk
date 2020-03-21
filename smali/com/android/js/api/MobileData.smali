.class public Lcom/android/js/api/MobileData;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "MobileData.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 20
    iput-object p1, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/android/js/api/MobileData;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 22
    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/js/api/MobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 24
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "MobileData"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/js/api/MobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    const-string v4, "mobile_data"

    const/4 v5, 0x1

    if-lt v1, v2, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    move v0, v3

    .line 35
    :cond_3
    :goto_0
    return v0
.end method
