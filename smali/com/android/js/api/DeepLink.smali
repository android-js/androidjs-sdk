.class public Lcom/android/js/api/DeepLink;
.super Ljava/lang/Object;
.source "DeepLink.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/js/api/DeepLink;->activity:Landroid/app/Activity;

    .line 12
    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/android/js/api/DeepLink;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 18
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 20
    :cond_0
    const-string v3, "-1"

    return-object v3
.end method
