.class public Lcom/android/js/react_native/api/SMS;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "SMS.java"


# instance fields
.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private sms:Lcom/android/js/api/SMS;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 13
    iput-object p1, p0, Lcom/android/js/react_native/api/SMS;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    new-instance v0, Lcom/android/js/api/SMS;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/js/api/SMS;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/SMS;->sms:Lcom/android/js/api/SMS;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SMS"

    return-object v0
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/js/react_native/api/SMS;->sms:Lcom/android/js/api/SMS;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/SMS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
