.class public Landroid/support/constraint/solver/state/helpers/ChainReference;
.super Landroid/support/constraint/solver/state/HelperReference;
.source "ChainReference.java"


# instance fields
.field protected mBias:F

.field protected mStyle:Landroid/support/constraint/solver/state/State$Chain;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/state/State$Helper;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/state/HelperReference;-><init>(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/state/State$Helper;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 24
    iput p1, p0, Landroid/support/constraint/solver/state/helpers/ChainReference;->mBias:F

    .line 25
    sget-object p1, Landroid/support/constraint/solver/state/State$Chain;->SPREAD:Landroid/support/constraint/solver/state/State$Chain;

    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/ChainReference;->mStyle:Landroid/support/constraint/solver/state/State$Chain;

    return-void
.end method


# virtual methods
.method public bias(F)V
    .locals 0

    .line 36
    iput p1, p0, Landroid/support/constraint/solver/state/helpers/ChainReference;->mBias:F

    return-void
.end method

.method public getBias()F
    .locals 1

    .line 35
    iget v0, p0, Landroid/support/constraint/solver/state/helpers/ChainReference;->mBias:F

    return v0
.end method

.method public getStyle()Landroid/support/constraint/solver/state/State$Chain;
    .locals 1

    .line 31
    sget-object v0, Landroid/support/constraint/solver/state/State$Chain;->SPREAD:Landroid/support/constraint/solver/state/State$Chain;

    return-object v0
.end method

.method public style(Landroid/support/constraint/solver/state/State$Chain;)V
    .locals 0

    .line 33
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/ChainReference;->mStyle:Landroid/support/constraint/solver/state/State$Chain;

    return-void
.end method
