.class Landroid/support/constraint/solver/PriorityGoalRow$1;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/solver/PriorityGoalRow;->addToGoal(Landroid/support/constraint/solver/SolverVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/constraint/solver/SolverVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/solver/PriorityGoalRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/PriorityGoalRow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/constraint/solver/PriorityGoalRow;

    .line 214
    iput-object p1, p0, Landroid/support/constraint/solver/PriorityGoalRow$1;->this$0:Landroid/support/constraint/solver/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)I
    .locals 2
    .param p1, "variable1"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variable2"    # Landroid/support/constraint/solver/SolverVariable;

    .line 217
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v1, p2, Landroid/support/constraint/solver/SolverVariable;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 214
    check-cast p1, Landroid/support/constraint/solver/SolverVariable;

    check-cast p2, Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/PriorityGoalRow$1;->compare(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)I

    move-result p1

    return p1
.end method
