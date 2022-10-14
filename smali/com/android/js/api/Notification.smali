.class public Lcom/android/js/api/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private className:Ljava/lang/String;

.field private iconId:I

.field private inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

.field private intent:Landroid/content/Intent;

.field private notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notification_channel:Landroid/app/NotificationChannel;

.field private notification_manager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 27
    iget-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    .line 28
    iput p2, p0, Lcom/android/js/api/Notification;->iconId:I

    .line 29
    iput-object p3, p0, Lcom/android/js/api/Notification;->className:Ljava/lang/String;

    .line 31
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/android/js/api/Notification;->className:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 38
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 p2, 0x3

    const-string p3, "androidjs"

    const-string v0, "androidjs.notifications"

    invoke-direct {p1, p3, v0, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object p1, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    .line 39
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    const-string p2, "androidjs.notification.channel"

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 66
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    iput-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 67
    iget-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    const/4 p1, 0x0

    .line 68
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    const-string v4, "androidjs"

    invoke-direct {v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget p2, p0, Lcom/android/js/api/Notification;->iconId:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method public showNotification(I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
