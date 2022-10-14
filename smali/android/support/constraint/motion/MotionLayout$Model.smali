.class Landroid/support/constraint/motion/MotionLayout$Model;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Model"
.end annotation


# instance fields
.field mEnd:Landroid/support/constraint/ConstraintSet;

.field mEndId:I

.field mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mStart:Landroid/support/constraint/ConstraintSet;

.field mStartId:I

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 0

    .line 1974
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1975
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1976
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 1977
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 1978
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method private debugLayout(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 10

    .line 2165
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ========= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 2170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2171
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v8, "_"

    if-eqz v7, :cond_0

    const-string v7, "T"

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1

    const-string v6, "B"

    goto :goto_2

    :cond_1
    move-object v6, v8

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_2

    const-string v6, "L"

    goto :goto_3

    :cond_2
    move-object v6, v8

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_3

    const-string v8, "R"

    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2177
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2178
    invoke-static {v7}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    .line 2179
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 2180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2182
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2184
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " done. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 4

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "SS"

    goto :goto_0

    :cond_0
    const-string v1, "__"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const-string v3, "|__"

    if-eq v0, v2, :cond_1

    const-string v0, "|SE"

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, v2, :cond_2

    const-string v0, "|ES"

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, v2, :cond_3

    const-string v0, "|EE"

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v0, v2, :cond_4

    const-string v0, "|LL"

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v0, v2, :cond_5

    const-string v0, "|LR"

    goto :goto_5

    :cond_5
    move-object v0, v3

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v0, v2, :cond_6

    const-string v0, "|RL"

    goto :goto_6

    :cond_6
    move-object v0, v3

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v0, v2, :cond_7

    const-string v0, "|RR"

    goto :goto_7

    :cond_7
    move-object v0, v3

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v0, v2, :cond_8

    const-string v0, "|TT"

    goto :goto_8

    :cond_8
    move-object v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v0, v2, :cond_9

    const-string v0, "|TB"

    goto :goto_9

    :cond_9
    move-object v0, v3

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v0, v2, :cond_a

    const-string v0, "|BT"

    goto :goto_a

    :cond_a
    move-object v0, v3

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq p2, v2, :cond_b

    const-string v3, "|BB"

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private debugWidget(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 7

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v2, "B"

    const-string v3, "T"

    const-string v4, "__"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v2, "R"

    const-string v3, "L"

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_4

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_6

    move-object v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V
    .locals 12

    .line 2067
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2068
    new-instance v7, Landroid/support/constraint/Constraints$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v7, v0, v0}, Landroid/support/constraint/Constraints$LayoutParams;-><init>(II)V

    .line 2070
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    .line 2071
    invoke-virtual {v6, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2072
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getId()I

    move-result v0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2075
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2076
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2077
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2080
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2081
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 2082
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0, v7}, Landroid/support/constraint/ConstraintSet;->applyToLayoutParams(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 2084
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2085
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2086
    instance-of v0, v11, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_1

    .line 2087
    move-object v0, v11

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {p2, v0, v10, v7, v6}, Landroid/support/constraint/ConstraintSet;->applyToHelper(Landroid/support/constraint/ConstraintHelper;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2088
    instance-of v0, v11, Landroid/support/constraint/Barrier;

    if-eqz v0, :cond_1

    .line 2089
    move-object v0, v11

    check-cast v0, Landroid/support/constraint/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 2099
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 2100
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_2

    .line 2102
    :cond_2
    invoke-virtual {v7, v8}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    .line 2104
    :goto_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    const/4 v1, 0x0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v7

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout;->access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2105
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getVisibilityMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2106
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_1

    .line 2108
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getVisibility(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto/16 :goto_1

    .line 2111
    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2112
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v1, :cond_5

    .line 2113
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 2114
    check-cast v0, Landroid/support/constraint/solver/widgets/Helper;

    .line 2115
    invoke-virtual {v1, p1, v0, v6}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V

    .line 2116
    check-cast v0, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 2117
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->captureWidgets()V

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public build()V
    .locals 10

    .line 2268
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 2269
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2272
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2273
    new-instance v4, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v4, v3}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 2275
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v5, v5, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_6

    .line 2278
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2279
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 2283
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, "no widget for  "

    const-string v8, "MotionLayout"

    if-eqz v4, :cond_3

    .line 2284
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2286
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v9}, Landroid/support/constraint/motion/MotionController;->setStartState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_2

    .line 2288
    :cond_2
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v4, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v4, :cond_3

    .line 2289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    if-eqz v4, :cond_5

    .line 2294
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2296
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v2}, Landroid/support/constraint/motion/MotionController;->setEndState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_3

    .line 2298
    :cond_4
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v3, :cond_5

    .line 2299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 4

    .line 1983
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 1984
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1985
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1987
    invoke-virtual {p2, p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 1988
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1990
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v3, :cond_0

    .line 1991
    new-instance v3, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    goto :goto_1

    .line 1992
    :cond_0
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v3, :cond_1

    .line 1993
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    goto :goto_1

    .line 1994
    :cond_1
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Flow;

    if-eqz v3, :cond_2

    .line 1995
    new-instance v3, Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Flow;-><init>()V

    goto :goto_1

    .line 1996
    :cond_2
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v3, :cond_3

    .line 1997
    new-instance v3, Landroid/support/constraint/solver/widgets/HelperWidget;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    goto :goto_1

    .line 1999
    :cond_3
    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 2001
    :goto_1
    invoke-virtual {p2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 2002
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2004
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2005
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 4

    .line 2123
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p1

    .line 2126
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    .line 2127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2130
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V
    .locals 4

    .line 2010
    iput-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 2011
    iput-object p3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    .line 2012
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2013
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2014
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2015
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2016
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2017
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2018
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionLayout;->access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2019
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionLayout;->access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2020
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget p1, p1, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 2022
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2024
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_0

    .line 2026
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    if-eqz p2, :cond_2

    .line 2028
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2035
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p2}, Landroid/support/constraint/motion/MotionLayout;->access$600(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2036
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2045
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p2}, Landroid/support/constraint/motion/MotionLayout;->access$700(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2046
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2053
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2055
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x2

    if-ne p2, p3, :cond_3

    .line 2056
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2057
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2059
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p3, :cond_4

    .line 2060
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2061
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_4
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .locals 1

    .line 2312
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public measure(II)V
    .locals 13

    .line 2193
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2194
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2196
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v0, v2, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2197
    iput v1, v2, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2198
    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getOptimizationLevel()I

    move-result v2

    .line 2200
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2201
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2202
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_2

    .line 2203
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_0

    .line 2206
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_1

    .line 2207
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2209
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2218
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/motion/MotionLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    if-ne v1, v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_9

    .line 2222
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v0, v3, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2223
    iput v1, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2224
    iget v0, v3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2225
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2226
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v0, :cond_6

    .line 2227
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_2

    .line 2230
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v0, :cond_5

    .line 2231
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2233
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2236
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2237
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2238
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    .line 2239
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    .line 2240
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    if-eq v1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 2244
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2245
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2246
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    if-nez v2, :cond_b

    .line 2247
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v6, v6, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v7, v7, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v2, v2, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_b
    move v9, v0

    .line 2249
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq v0, v3, :cond_c

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-nez v0, :cond_d

    .line 2250
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    :cond_d
    move v10, v1

    .line 2253
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2254
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    const/4 v11, 0x1

    .line 2255
    :goto_6
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2256
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v12, 0x1

    .line 2257
    :goto_8
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    move v7, p1

    move v8, p2

    invoke-static/range {v6 .. v12}, Landroid/support/constraint/motion/MotionLayout;->access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V

    return-void
.end method

.method public reEvaluateState()V
    .locals 2

    .line 2188
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$900(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$1000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->measure(II)V

    .line 2189
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$1100(Landroid/support/constraint/motion/MotionLayout;)V

    return-void
.end method

.method public setMeasuredId(II)V
    .locals 0

    .line 2307
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    .line 2308
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    return-void
.end method
