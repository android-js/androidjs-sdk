.class public Lcom/android/js/api/MobileData;
.super Ljava/lang/Object;
.source "MobileData.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    const-string v0, "phone"

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/js/api/MobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 5

    .line 18
    iget-object v0, p0, Lcom/android/js/api/MobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/MobileData;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
