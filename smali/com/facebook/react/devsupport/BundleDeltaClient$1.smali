.class synthetic Lcom/facebook/react/devsupport/BundleDeltaClient$1;
.super Ljava/lang/Object;
.source "BundleDeltaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/BundleDeltaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$react$devsupport$BundleDeltaClient$ClientType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->values()[Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$1;->$SwitchMap$com$facebook$react$devsupport$BundleDeltaClient$ClientType:[I

    :try_start_0
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$1;->$SwitchMap$com$facebook$react$devsupport$BundleDeltaClient$ClientType:[I

    sget-object v1, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->DEV_SUPPORT:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$1;->$SwitchMap$com$facebook$react$devsupport$BundleDeltaClient$ClientType:[I

    sget-object v1, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NATIVE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
