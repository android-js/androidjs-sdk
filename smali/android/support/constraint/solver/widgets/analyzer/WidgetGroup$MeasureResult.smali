.class Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureResult"
.end annotation


# instance fields
.field baseline:I

.field bottom:I

.field left:I

.field orientation:I

.field right:I

.field final synthetic this$0:Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;

.field top:I

.field widgetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->this$0:Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->widgetRef:Ljava/lang/ref/WeakReference;

    .line 237
    iget-object p1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->left:I

    .line 238
    iget-object p1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->top:I

    .line 239
    iget-object p1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->right:I

    .line 240
    iget-object p1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->bottom:I

    .line 241
    iget-object p1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->baseline:I

    .line 242
    iput p4, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->orientation:I

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 8

    .line 246
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->widgetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    .line 248
    iget v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->left:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->top:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->right:I

    iget v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->bottom:I

    iget v6, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->baseline:I

    iget v7, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->orientation:I

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalFrame(IIIIII)V

    :cond_0
    return-void
.end method
