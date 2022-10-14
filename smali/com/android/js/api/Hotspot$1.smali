.class Lcom/android/js/api/Hotspot$1;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "Hotspot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/api/Hotspot;->enableHotspot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/js/api/Hotspot;


# direct methods
.method constructor <init>(Lcom/android/js/api/Hotspot;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/js/api/Hotspot$1;->this$0:Lcom/android/js/api/Hotspot;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 47
    iget-object v0, p0, Lcom/android/js/api/Hotspot$1;->this$0:Lcom/android/js/api/Hotspot;

    invoke-static {v0, p1}, Lcom/android/js/api/Hotspot;->access$002(Lcom/android/js/api/Hotspot;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 48
    iget-object p1, p0, Lcom/android/js/api/Hotspot$1;->this$0:Lcom/android/js/api/Hotspot;

    invoke-static {p1}, Lcom/android/js/api/Hotspot;->access$000(Lcom/android/js/api/Hotspot;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/android/js/api/Hotspot$1;->this$0:Lcom/android/js/api/Hotspot;

    invoke-static {p1}, Lcom/android/js/api/Hotspot;->access$000(Lcom/android/js/api/Hotspot;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    return-void
.end method
