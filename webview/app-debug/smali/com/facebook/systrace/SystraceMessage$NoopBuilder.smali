.class Lcom/facebook/systrace/SystraceMessage$NoopBuilder;
.super Lcom/facebook/systrace/SystraceMessage$Builder;
.source "SystraceMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/systrace/SystraceMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/systrace/SystraceMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/systrace/SystraceMessage$1;

    .line 42
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public arg(Ljava/lang/String;D)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 64
    return-object p0
.end method

.method public arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 54
    return-object p0
.end method

.method public arg(Ljava/lang/String;J)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 59
    return-object p0
.end method

.method public arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 49
    return-object p0
.end method

.method public flush()V
    .locals 0

    .line 45
    return-void
.end method
