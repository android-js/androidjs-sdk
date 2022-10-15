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
    .locals 16

    .line 27
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v3, "HORIZONTAL_DIMENSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v5, "VERTICAL_DIMENSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v5, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v9, "RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v9, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v11, "TOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v11, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v13, "BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const-string v15, "BASELINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    const/16 v15, 0x8

    new-array v15, v15, [Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

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
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    return-object v0
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
