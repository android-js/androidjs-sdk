.class final enum Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;
.super Ljava/lang/Enum;
.source "DependencyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum BASELINE:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum BOTTOM:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum HORIZONTAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum LEFT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum RIGHT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum TOP:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum UNKNOWN:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum VERTICAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v2, 0x1

    const-string v3, "HORIZONTAL_DIMENSION"

    invoke-direct {v0, v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v3, 0x2

    const-string v4, "VERTICAL_DIMENSION"

    invoke-direct {v0, v4, v3}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v4, 0x3

    const-string v5, "LEFT"

    invoke-direct {v0, v5, v4}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v5, 0x4

    const-string v6, "RIGHT"

    invoke-direct {v0, v6, v5}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v6, 0x5

    const-string v7, "TOP"

    invoke-direct {v0, v7, v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v7, 0x6

    const-string v8, "BOTTOM"

    invoke-direct {v0, v8, v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v8, 0x7

    const-string v9, "BASELINE"

    invoke-direct {v0, v9, v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    sget-object v9, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v9, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v7

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v1, v0, v8

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;
    .locals 1

    .line 27
    const-class v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;
    .locals 1

    .line 27
    sget-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    return-object v0
.end method
