.class Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;
.super Landroid/support/constraint/motion/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field value:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 282
    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 283
    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;->value:[F

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .locals 2

    .line 287
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;->value:[F

    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;->get(F)F

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 288
    iget-object p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;->mCustom:Landroid/support/constraint/ConstraintAttribute;

    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;->value:[F

    invoke-virtual {p2, p1, v0}, Landroid/support/constraint/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    return-void
.end method
