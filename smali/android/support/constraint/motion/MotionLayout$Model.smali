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
    .locals 1
    .param p1, "this$0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 1974
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1975
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1976
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1977
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 1978
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method private debugLayout(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2165
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2166
    .local v0, "v":Landroid/view/View;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "cName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ========= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2169
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 2170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2171
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2172
    .local v7, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const-string v8, ""

    .line 2173
    .local v8, "a":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v11, "_"

    if-eqz v10, :cond_0

    const-string v10, "T"

    goto :goto_1

    :cond_0
    move-object v10, v11

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1

    const-string v10, "B"

    goto :goto_2

    :cond_1
    move-object v10, v11

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_2

    const-string v10, "L"

    goto :goto_3

    :cond_2
    move-object v10, v11

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    const-string v11, "R"

    :cond_3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2177
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    .line 2178
    invoke-static {v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    .line 2179
    .local v9, "name":Ljava/lang/String;
    instance-of v10, v0, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 2180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2182
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "a":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2184
    .end local v5    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " done. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 2139
    const-string v0, " "

    .line 2140
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "SS"

    goto :goto_0

    :cond_0
    const-string v2, "__"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const-string v4, "|__"

    if-eq v2, v3, :cond_1

    const-string v2, "|SE"

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, v3, :cond_2

    const-string v2, "|ES"

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, v3, :cond_3

    const-string v2, "|EE"

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v2, v3, :cond_4

    const-string v2, "|LL"

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v2, v3, :cond_5

    const-string v2, "|LR"

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v2, v3, :cond_6

    const-string v2, "|RL"

    goto :goto_6

    :cond_6
    move-object v2, v4

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v2, v3, :cond_7

    const-string v2, "|RR"

    goto :goto_7

    :cond_7
    move-object v2, v4

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v2, v3, :cond_8

    const-string v2, "|TT"

    goto :goto_8

    :cond_8
    move-object v2, v4

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v2, v3, :cond_9

    const-string v2, "|TB"

    goto :goto_9

    :cond_9
    move-object v2, v4

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v2, v3, :cond_a

    const-string v2, "|BT"

    goto :goto_a

    :cond_a
    move-object v2, v4

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v2, v3, :cond_b

    const-string v4, "|BB"

    :cond_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    return-void
.end method

.method private debugWidget(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "child"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2156
    const-string v0, " "

    .line 2157
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v3, "B"

    const-string v4, "T"

    const-string v5, "__"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v3, "R"

    const-string v4, "L"

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_4

    move-object v6, v4

    goto :goto_3

    :cond_4
    move-object v6, v3

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v5

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_6

    move-object v3, v4

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    return-void
.end method

.method private setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V
    .locals 12
    .param p1, "base"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "cset"    # Landroid/support/constraint/ConstraintSet;

    .line 2067
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2068
    .local v0, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Landroid/support/constraint/Constraints$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/support/constraint/Constraints$LayoutParams;-><init>(II)V

    move-object v7, v1

    .line 2070
    .local v7, "layoutParams":Landroid/support/constraint/Constraints$LayoutParams;
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2071
    const/4 v8, 0x0

    invoke-virtual {v0, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2072
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2075
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2076
    .local v2, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2077
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2078
    .end local v2    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 2080
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2081
    .local v10, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/View;

    .line 2082
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1, v7}, Landroid/support/constraint/ConstraintSet;->applyToLayoutParams(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 2084
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2085
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2086
    instance-of v1, v11, Landroid/support/constraint/ConstraintHelper;

    if-eqz v1, :cond_1

    .line 2087
    move-object v1, v11

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {p2, v1, v10, v7, v0}, Landroid/support/constraint/ConstraintSet;->applyToHelper(Landroid/support/constraint/ConstraintHelper;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2088
    instance-of v1, v11, Landroid/support/constraint/Barrier;

    if-eqz v1, :cond_1

    .line 2089
    move-object v1, v11

    check-cast v1, Landroid/support/constraint/Barrier;

    invoke-virtual {v1}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 2099
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 2100
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_2

    .line 2102
    :cond_2
    invoke-virtual {v7, v8}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    .line 2104
    :goto_2
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    const/4 v2, 0x0

    move-object v3, v11

    move-object v4, v10

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/MotionLayout;->access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2105
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getVisibilityMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2106
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_3

    .line 2108
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getVisibility(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 2110
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "view":Landroid/view/View;
    :goto_3
    goto/16 :goto_1

    .line 2111
    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2112
    .restart local v2    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v3, :cond_5

    .line 2113
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 2114
    .local v3, "view":Landroid/support/constraint/ConstraintHelper;
    move-object v4, v2

    check-cast v4, Landroid/support/constraint/solver/widgets/Helper;

    .line 2115
    .local v4, "helper":Landroid/support/constraint/solver/widgets/Helper;
    invoke-virtual {v3, p1, v4, v0}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V

    .line 2116
    move-object v5, v4

    check-cast v5, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 2117
    .local v5, "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/VirtualLayout;->captureWidgets()V

    .line 2119
    .end local v2    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "view":Landroid/support/constraint/ConstraintHelper;
    .end local v4    # "helper":Landroid/support/constraint/solver/widgets/Helper;
    .end local v5    # "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    :cond_5
    goto :goto_4

    .line 2120
    :cond_6
    return-void
.end method


# virtual methods
.method public build()V
    .locals 11

    .line 2268
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 2269
    .local v0, "n":I
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2272
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2273
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v3, v2}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 2275
    .local v3, "motionController":Landroid/support/constraint/motion/MotionController;
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v4, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "motionController":Landroid/support/constraint/motion/MotionController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2277
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 2278
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2279
    .restart local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    .line 2280
    .restart local v3    # "motionController":Landroid/support/constraint/motion/MotionController;
    if-nez v3, :cond_1

    .line 2281
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

    .line 2285
    .local v4, "startWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_2

    .line 2286
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v9}, Landroid/support/constraint/motion/MotionController;->setStartState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_2

    .line 2288
    :cond_2
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v9, v9, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v9, :cond_3

    .line 2289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    .end local v4    # "startWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    if-eqz v4, :cond_5

    .line 2294
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 2295
    .local v4, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_4

    .line 2296
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/motion/MotionController;->setEndState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_3

    .line 2298
    :cond_4
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v9, v9, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v9, :cond_5

    .line 2299
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "motionController":Landroid/support/constraint/motion/MotionController;
    .end local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2304
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "src"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "dest"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1983
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 1984
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1985
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1987
    invoke-virtual {p2, p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 1988
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1990
    .local v3, "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v4, :cond_0

    .line 1991
    new-instance v4, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    .local v4, "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1992
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_1

    .line 1993
    new-instance v4, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1994
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Flow;

    if-eqz v4, :cond_2

    .line 1995
    new-instance v4, Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Flow;-><init>()V

    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1996
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v4, :cond_3

    .line 1997
    new-instance v4, Landroid/support/constraint/solver/widgets/HelperWidget;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1999
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 2001
    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1
    invoke-virtual {p2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 2002
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    .end local v3    # "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_0

    .line 2004
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2005
    .restart local v3    # "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2006
    .end local v3    # "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_2

    .line 2007
    :cond_5
    return-void
.end method

.method getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 5
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "view"    # Landroid/view/View;

    .line 2123
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2124
    return-object p1

    .line 2126
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2127
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2128
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2129
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2130
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 2131
    return-object v3

    .line 2128
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2135
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V
    .locals 5
    .param p1, "baseLayout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "start"    # Landroid/support/constraint/ConstraintSet;
    .param p3, "end"    # Landroid/support/constraint/ConstraintSet;

    .line 2010
    iput-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 2011
    iput-object p3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    .line 2012
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2013
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2014
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2015
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2016
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2017
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2018
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2019
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2020
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 2021
    if-eqz p2, :cond_0

    .line 2022
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2024
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_0

    .line 2026
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2027
    if-eqz p2, :cond_2

    .line 2028
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2035
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$600(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2036
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2045
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$700(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2046
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2053
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2054
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_4

    .line 2055
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 2056
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2057
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2059
    :cond_3
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_4

    .line 2060
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2061
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2064
    :cond_4
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I

    .line 2312
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public measure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2193
    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 2194
    .local v10, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2196
    .local v11, "heightMode":I
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v10, v1, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2197
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v11, v1, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2198
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getOptimizationLevel()I

    move-result v12

    .line 2200
    .local v12, "optimisationLevel":I
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2201
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2202
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v1, :cond_2

    .line 2203
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_0

    .line 2206
    :cond_0
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v1, :cond_1

    .line 2207
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2209
    :cond_1
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2217
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 2218
    .local v1, "recompute_start_end_size":Z
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v10, v2, :cond_3

    if-ne v11, v2, :cond_3

    .line 2219
    const/4 v1, 0x0

    move v13, v1

    goto :goto_1

    .line 2221
    :cond_3
    move v13, v1

    .end local v1    # "recompute_start_end_size":Z
    .local v13, "recompute_start_end_size":Z
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v13, :cond_9

    .line 2222
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v10, v3, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2223
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v11, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2224
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 2225
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2226
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_6

    .line 2227
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_2

    .line 2230
    :cond_4
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_5

    .line 2231
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2233
    :cond_5
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2236
    :cond_6
    :goto_2
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2237
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2238
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    .line 2239
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    .line 2240
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    if-ne v4, v5, :cond_8

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v4, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    if-eq v4, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v3, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 2244
    :cond_9
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2245
    .local v3, "width":I
    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v4, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2246
    .local v4, "height":I
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_b

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    move v14, v3

    goto :goto_6

    .line 2247
    :cond_b
    :goto_5
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v5, v5

    iget-object v7, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v7, v7, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v14, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v14, v14, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    iget-object v15, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v15, v15, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float v7, v7, v14

    add-float/2addr v5, v7

    float-to-int v3, v5

    move v14, v3

    .line 2249
    .end local v3    # "width":I
    .local v14, "width":I
    :goto_6
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq v3, v6, :cond_d

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    move v15, v4

    goto :goto_8

    .line 2250
    :cond_d
    :goto_7
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v6, v6, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    iget-object v7, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v7, v7, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    float-to-int v4, v3

    move v15, v4

    .line 2253
    .end local v4    # "height":I
    .local v15, "height":I
    :goto_8
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2254
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v6, 0x1

    .line 2255
    .local v6, "isWidthMeasuredTooSmall":Z
    :goto_a
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2256
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v7, 0x1

    .line 2257
    .local v7, "isHeightMeasuredTooSmall":Z
    :goto_c
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v14

    move v5, v15

    invoke-static/range {v1 .. v7}, Landroid/support/constraint/motion/MotionLayout;->access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V

    .line 2265
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

    .line 2190
    return-void
.end method

.method public setMeasuredId(II)V
    .locals 0
    .param p1, "startId"    # I
    .param p2, "endId"    # I

    .line 2307
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    .line 2308
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    .line 2309
    return-void
.end method
