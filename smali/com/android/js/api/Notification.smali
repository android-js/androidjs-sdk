.class public Lcom/android/js/api/Notification;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Notification.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private iconId:I

.field private inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

.field private notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notification_manager:Landroid/app/NotificationManager;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "iconId"    # I

    .line 23
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 24
    iput-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/android/js/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 26
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/js/api/Notification;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/js/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    .line 28
    iput p3, p0, Lcom/android/js/api/Notification;->iconId:I

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "Notification"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 50
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    iput-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 51
    iget-object v0, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 36
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/js/api/Notification;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    const-string v2, "androidjs"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 37
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 39
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, p0, Lcom/android/js/api/Notification;->iconId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 41
    return-void
.end method

.method public showNotification(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 46
    return-void
.end method
