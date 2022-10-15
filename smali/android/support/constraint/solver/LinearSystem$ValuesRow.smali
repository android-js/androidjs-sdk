.class Landroid/support/constraint/solver/LinearSystem$ValuesRow;
.super Landroid/support/constraint/solver/ArrayRow;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesRow"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/solver/LinearSystem;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/Cache;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 89
    iput-object p1, p0, Landroid/support/constraint/solver/LinearSystem$ValuesRow;->this$0:Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p0}, Landroid/support/constraint/solver/ArrayRow;-><init>()V

    .line 90
    new-instance v0, Landroid/support/constraint/solver/SolverVariableValues;

    invoke-direct {v0, p0, p2}, Landroid/support/constraint/solver/SolverVariableValues;-><init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem$ValuesRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    .line 91
    return-void
.end method
