.class public Lcom/android/js/api/MobileData;
.super Ljava/lang/Object;
.source "MobileData.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    .line 13
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/js/api/MobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 14
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 6

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/js/api/MobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    const-string v4, "mobile_data"

    const/4 v5, 0x1

    if-lt v1, v2, :cond_1

    .line 20
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

    .line 22
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

    .line 24
    :cond_3
    :goto_0
    return v0
.end method
