.class public Lcom/android/js/api/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/js/api/Toast;->activity:Landroid/app/Activity;

    .line 10
    return-void
.end method


# virtual methods
.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 13
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const/4 p2, 0x1

    .line 14
    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/js/api/Toast;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 16
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 17
    return-void
.end method
