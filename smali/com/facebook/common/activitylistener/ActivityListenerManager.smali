.class public Lcom/facebook/common/activitylistener/ActivityListenerManager;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Lcom/facebook/common/activitylistener/ActivityListener;Landroid/content/Context;)V
    .locals 2
    .param p0, "activityListener"    # Lcom/facebook/common/activitylistener/ActivityListener;
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    instance-of v0, p1, Lcom/facebook/common/activitylistener/ListenableActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/facebook/common/activitylistener/ListenableActivity;

    if-eqz v0, :cond_1

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/facebook/common/activitylistener/ListenableActivity;

    .line 36
    .local v0, "listenableActivity":Lcom/facebook/common/activitylistener/ListenableActivity;
    new-instance v1, Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;

    invoke-direct {v1, p0}, Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;-><init>(Lcom/facebook/common/activitylistener/ActivityListener;)V

    .line 37
    .local v1, "listener":Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;
    invoke-interface {v0, v1}, Lcom/facebook/common/activitylistener/ListenableActivity;->addActivityListener(Lcom/facebook/common/activitylistener/ActivityListener;)V

    .line 39
    .end local v0    # "listenableActivity":Lcom/facebook/common/activitylistener/ListenableActivity;
    .end local v1    # "listener":Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;
    :cond_1
    return-void
.end method
