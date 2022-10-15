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
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iconId"    # I
    .param p3, "className"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 27
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    .line 28
    iput p2, p0, Lcom/android/js/api/Notification;->iconId:I

    .line 29
    iput-object p3, p0, Lcom/android/js/api/Notification;->className:Ljava/lang/String;

    .line 31
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/js/api/Notification;->className:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    iget-object v0, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "androidjs"

    const-string v3, "androidjs.notifications"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    .line 39
    const-string v1, "androidjs.notification.channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    iput-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 67
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 50
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    const-string v4, "androidjs"

    invoke-direct {v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v3, p0, Lcom/android/js/api/Notification;->iconId:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 59
    return-void
.end method

.method public showNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .line 62
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 63
    return-void
.end method
