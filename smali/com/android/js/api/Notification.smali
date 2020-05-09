.class public Lcom/android/js/api/Notification;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Notification.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private iconId:I

.field private inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

.field private intent:Landroid/content/Intent;

.field private notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notification_channel:Landroid/app/NotificationChannel;

.field private notification_manager:Landroid/app/NotificationManager;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 33
    iput-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/android/js/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/js/api/Notification;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/js/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    .line 37
    iput p3, p0, Lcom/android/js/api/Notification;->iconId:I

    .line 39
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    const-string p3, "com.android.js.webview.MainActivity"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 43
    :goto_1
    iget-object p1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_2

    .line 46
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 p2, 0x3

    const-string p3, "androidjs"

    const-string v0, "androidjs.notifications"

    invoke-direct {p1, p3, v0, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object p1, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    .line 47
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    const-string p2, "androidjs.notification.channel"

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/js/api/Notification;->notification_channel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Notification"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 77
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    iput-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 78
    iget-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    const/4 p1, 0x0

    .line 79
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/js/api/Notification;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/js/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    const-string v4, "androidjs"

    invoke-direct {v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 60
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 61
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget p2, p0, Lcom/android/js/api/Notification;->iconId:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    iget-object p1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method public showNotification(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
