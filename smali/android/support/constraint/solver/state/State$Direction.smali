.class public final enum Landroid/support/constraint/solver/state/State$Direction;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/state/State$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/state/State$Direction;

.field public static final enum BOTTOM:Landroid/support/constraint/solver/state/State$Direction;

.field public static final enum END:Landroid/support/constraint/solver/state/State$Direction;

.field public static final enum LEFT:Landroid/support/constraint/solver/state/State$Direction;

.field public static final enum RIGHT:Landroid/support/constraint/solver/state/State$Direction;

.field public static final enum START:Landroid/support/constraint/solver/state/State$Direction;

.field public static final enum TOP:Landroid/support/constraint/solver/state/State$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 71
    new-instance v0, Landroid/support/constraint/solver/state/State$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Direction;->LEFT:Landroid/support/constraint/solver/state/State$Direction;

    .line 72
    new-instance v1, Landroid/support/constraint/solver/state/State$Direction;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/state/State$Direction;->RIGHT:Landroid/support/constraint/solver/state/State$Direction;

    .line 73
    new-instance v3, Landroid/support/constraint/solver/state/State$Direction;

    const-string v5, "START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/state/State$Direction;->START:Landroid/support/constraint/solver/state/State$Direction;

    .line 74
    new-instance v5, Landroid/support/constraint/solver/state/State$Direction;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/state/State$Direction;->END:Landroid/support/constraint/solver/state/State$Direction;

    .line 75
    new-instance v7, Landroid/support/constraint/solver/state/State$Direction;

    const-string v9, "TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/constraint/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/constraint/solver/state/State$Direction;->TOP:Landroid/support/constraint/solver/state/State$Direction;

    .line 76
    new-instance v9, Landroid/support/constraint/solver/state/State$Direction;

    const-string v11, "BOTTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/support/constraint/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/support/constraint/solver/state/State$Direction;->BOTTOM:Landroid/support/constraint/solver/state/State$Direction;

    .line 70
    const/4 v11, 0x6

    new-array v11, v11, [Landroid/support/constraint/solver/state/State$Direction;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Landroid/support/constraint/solver/state/State$Direction;->$VALUES:[Landroid/support/constraint/solver/state/State$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/state/State$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Landroid/support/constraint/solver/state/State$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/State$Direction;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/state/State$Direction;
    .locals 1

    .line 70
    sget-object v0, Landroid/support/constraint/solver/state/State$Direction;->$VALUES:[Landroid/support/constraint/solver/state/State$Direction;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/state/State$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/state/State$Direction;

    return-object v0
.end method
