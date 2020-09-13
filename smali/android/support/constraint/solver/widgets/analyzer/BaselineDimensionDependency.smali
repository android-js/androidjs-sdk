.class Landroid/support/constraint/solver/widgets/analyzer/BaselineDimensionDependency;
.super Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;
.source "BaselineDimensionDependency.java"


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;-><init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V

    return-void
.end method


# virtual methods
.method public update(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;)V
    .locals 1

    .line 26
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BaselineDimensionDependency;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    check-cast p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 27
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BaselineDimensionDependency;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    iput v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BaselineDimensionDependency;->resolved:Z

    return-void
.end method
