.class public Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;
.super Ljava/lang/Object;
.source "ReactRootViewTagGenerator.java"


# static fields
.field private static final ROOT_VIEW_TAG_INCREMENT:I = 0xa

.field private static sNextRootViewTag:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNextRootViewTag()I
    .locals 3

    const-class v0, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;

    monitor-enter v0

    .line 18
    :try_start_0
    sget v1, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->sNextRootViewTag:I

    .line 19
    sget v2, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->sNextRootViewTag:I

    add-int/lit8 v2, v2, 0xa

    sput v2, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->sNextRootViewTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
