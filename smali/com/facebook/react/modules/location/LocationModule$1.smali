.class Lcom/facebook/react/modules/location/LocationModule$1;
.super Ljava/lang/Object;
.source "LocationModule.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/location/LocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/location/LocationModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/location/LocationModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/location/LocationModule;

    .line 46
    iput-object p1, p0, Lcom/facebook/react/modules/location/LocationModule$1;->this$0:Lcom/facebook/react/modules/location/LocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/modules/location/LocationModule$1;->this$0:Lcom/facebook/react/modules/location/LocationModule;

    invoke-static {v0}, Lcom/facebook/react/modules/location/LocationModule;->access$100(Lcom/facebook/react/modules/location/LocationModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 50
    invoke-static {p1}, Lcom/facebook/react/modules/location/LocationModule;->access$000(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "geolocationDidChange"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 66
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 55
    const-string v0, "Provider "

    if-nez p2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$1;->this$0:Lcom/facebook/react/modules/location/LocationModule;

    sget v2, Lcom/facebook/react/modules/location/PositionError;->POSITION_UNAVAILABLE:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is out of service."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/react/modules/location/LocationModule;->access$200(Lcom/facebook/react/modules/location/LocationModule;ILjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$1;->this$0:Lcom/facebook/react/modules/location/LocationModule;

    sget v2, Lcom/facebook/react/modules/location/PositionError;->TIMEOUT:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is temporarily unavailable."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/react/modules/location/LocationModule;->access$200(Lcom/facebook/react/modules/location/LocationModule;ILjava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method
