.class final enum Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;
.super Ljava/lang/Enum;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum CENTER:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum END:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum NONE:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum START:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 303
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->START:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->END:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v7, "CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 303
    const-class v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;
    .locals 1

    .line 303
    sget-object v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method
