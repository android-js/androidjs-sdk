.class public Lcom/android/js/api/Call;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private callIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/js/api/Call;->activity:Landroid/app/Activity;

    .line 16
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/js/api/Call;->callIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public makeCall(Ljava/lang/String;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/android/js/api/Call;->callIntent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    iget-object p1, p0, Lcom/android/js/api/Call;->activity:Landroid/app/Activity;

    const-string v0, "android.permission.CALL_PHONE"

    invoke-static {p1, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/js/api/Call;->activity:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/js/api/Call;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/js/api/Call;->callIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
