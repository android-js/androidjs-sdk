.class public final enum Landroid/support/constraint/solver/state/State$Helper;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/state/State$Helper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum ALIGN_HORIZONTALLY:Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum ALIGN_VERTICALLY:Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum BARRIER:Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum FLOW:Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum HORIZONTAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum LAYER:Landroid/support/constraint/solver/state/State$Helper;

.field public static final enum VERTICAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 80
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL_CHAIN"

    invoke-direct {v0, v2, v1}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

    .line 81
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v2, 0x1

    const-string v3, "VERTICAL_CHAIN"

    invoke-direct {v0, v3, v2}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->VERTICAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

    .line 82
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v3, 0x2

    const-string v4, "ALIGN_HORIZONTALLY"

    invoke-direct {v0, v4, v3}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroid/support/constraint/solver/state/State$Helper;

    .line 83
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v4, 0x3

    const-string v5, "ALIGN_VERTICALLY"

    invoke-direct {v0, v5, v4}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroid/support/constraint/solver/state/State$Helper;

    .line 84
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v5, 0x4

    const-string v6, "BARRIER"

    invoke-direct {v0, v6, v5}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->BARRIER:Landroid/support/constraint/solver/state/State$Helper;

    .line 85
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v6, 0x5

    const-string v7, "LAYER"

    invoke-direct {v0, v7, v6}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->LAYER:Landroid/support/constraint/solver/state/State$Helper;

    .line 86
    new-instance v0, Landroid/support/constraint/solver/state/State$Helper;

    const/4 v7, 0x6

    const-string v8, "FLOW"

    invoke-direct {v0, v8, v7}, Landroid/support/constraint/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->FLOW:Landroid/support/constraint/solver/state/State$Helper;

    const/4 v0, 0x7

    .line 79
    new-array v0, v0, [Landroid/support/constraint/solver/state/State$Helper;

    sget-object v8, Landroid/support/constraint/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v8, v0, v1

    sget-object v1, Landroid/support/constraint/solver/state/State$Helper;->VERTICAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/state/State$Helper;->BARRIER:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/constraint/solver/state/State$Helper;->LAYER:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/constraint/solver/state/State$Helper;->FLOW:Landroid/support/constraint/solver/state/State$Helper;

    aput-object v1, v0, v7

    sput-object v0, Landroid/support/constraint/solver/state/State$Helper;->$VALUES:[Landroid/support/constraint/solver/state/State$Helper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/state/State$Helper;
    .locals 1

    .line 79
    const-class v0, Landroid/support/constraint/solver/state/State$Helper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/state/State$Helper;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/solver/state/State$Helper;
    .locals 1

    .line 79
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->$VALUES:[Landroid/support/constraint/solver/state/State$Helper;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/state/State$Helper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/state/State$Helper;

    return-object v0
.end method
