.class public Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
.super Ljava/lang/Object;
.source "ReactShadowNodeImpl.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactShadowNode;


# annotations
.annotation build Lcom/facebook/react/uimanager/annotations/ReactPropertyHolder;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ReactShadowNode<",
        "Lcom/facebook/react/uimanager/ReactShadowNodeImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final sYogaConfig:Lcom/facebook/yoga/YogaConfig;


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/ReactShadowNodeImpl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

.field private mIsLayoutOnly:Z

.field private mNativeChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/ReactShadowNodeImpl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNodeUpdated:Z

.field private final mPadding:[F

.field private final mPaddingIsPercent:[Z

.field private mParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReactTag:I

.field private mRootTag:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScreenX:I

.field private mScreenY:I

.field private mShouldNotifyOnLayout:Z

.field private mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTotalNativeChildren:I

.field private mViewClassName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mYogaNode:Lcom/facebook/yoga/YogaNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->get()Lcom/facebook/yoga/YogaConfig;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    .line 81
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    .line 82
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPaddingIsPercent:[Z

    .line 86
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaNode;

    .line 89
    .local v0, "node":Lcom/facebook/yoga/YogaNode;
    if-nez v0, :cond_0

    new-instance v1, Lcom/facebook/yoga/YogaNode;

    sget-object v2, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    invoke-direct {v1, v2}, Lcom/facebook/yoga/YogaNode;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    .line 90
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v1, p0}, Lcom/facebook/yoga/YogaNode;->setData(Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 92
    .end local v0    # "node":Lcom/facebook/yoga/YogaNode;
    goto :goto_1

    .line 93
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    .line 95
    :goto_1
    return-void
.end method

.method private getHierarchyInfoWithIndentation(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .line 927
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 928
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    .end local v0    # "i":I
    :cond_0
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " view=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getViewClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v0, "\' tag="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getReactTag()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 933
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_1

    .line 934
    const-string v0, " layout=\'x:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getScreenX()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    const-string v0, " y:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getScreenY()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " w:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getLayoutWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getLayoutHeight()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 938
    :cond_1
    const-string v0, "(virtual node)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :goto_1
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 943
    return-void

    .line 946
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 947
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getHierarchyInfoWithIndentation(Ljava/lang/StringBuilder;I)V

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 949
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private updateNativeChildrenCountInParent(I)V
    .locals 2
    .param p1, "delta"    # I

    .line 270
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mIsLayoutOnly:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    .line 272
    .local v0, "parent":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    :goto_0
    if-eqz v0, :cond_1

    .line 273
    iget v1, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    .line 274
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isLayoutOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    goto :goto_0

    .line 280
    .end local v0    # "parent":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    :cond_1
    :goto_1
    return-void
.end method

.method private updatePadding()V
    .locals 4

    .line 845
    const/4 v0, 0x0

    .local v0, "spacingType":I
    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_6

    .line 846
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 856
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v1, v1, v0

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 865
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    .line 866
    goto/16 :goto_3

    .line 857
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    .line 858
    invoke-static {v2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v1, v2, v1

    .line 859
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 860
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    .line 861
    goto :goto_3

    .line 850
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    .line 851
    invoke-static {v2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v1, v2, v1

    .line 852
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 853
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    .line 854
    goto :goto_3

    .line 870
    :cond_4
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPaddingIsPercent:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    .line 871
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPaddingPercent(Lcom/facebook/yoga/YogaEdge;F)V

    goto :goto_3

    .line 873
    :cond_5
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    .line 845
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 876
    .end local v0    # "spacingType":I
    :cond_6
    return-void
.end method


# virtual methods
.method public bridge synthetic addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;I)V

    return-void
.end method

.method public addChildAt(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;I)V
    .locals 4
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .param p2, "i"    # I

    .line 177
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    iput-object p0, p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 185
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isYogaLeafNode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    .line 187
    .local v0, "childYogaNode":Lcom/facebook/yoga/YogaNode;
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v1, v0, p2}, Lcom/facebook/yoga/YogaNode;->addChildAt(Lcom/facebook/yoga/YogaNode;I)V

    goto :goto_0

    .line 188
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add a child that doesn\'t have a YogaNode to a parent without a measure function! (Trying to add a \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to a \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v0    # "childYogaNode":Lcom/facebook/yoga/YogaNode;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->markUpdated()V

    .line 200
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isLayoutOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getTotalNativeChildren()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 201
    .local v0, "increase":I
    :goto_1
    iget v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    .line 203
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->updateNativeChildrenCountInParent(I)V

    .line 204
    return-void
.end method

.method public bridge synthetic addNativeChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->addNativeChildAt(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;I)V

    return-void
.end method

.method public final addNativeChildAt(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;I)V
    .locals 2
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .param p2, "nativeIndex"    # I

    .line 442
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mIsLayoutOnly:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 443
    iget-boolean v0, p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mIsLayoutOnly:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 445
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    iput-object p0, p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 451
    return-void
.end method

.method public calculateLayout()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Lcom/facebook/yoga/YogaNode;->calculateLayout(FF)V

    .line 422
    return-void
.end method

.method public dirty()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->dirty()V

    .line 168
    :cond_0
    return-void
.end method

.method public dispatchUpdates(FFLcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)Z
    .locals 22
    .param p1, "absoluteX"    # F
    .param p2, "absoluteY"    # F
    .param p3, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .param p4, "nativeViewHierarchyOptimizer"    # Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-boolean v2, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    if-eqz v2, :cond_0

    .line 319
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V

    goto :goto_0

    .line 318
    :cond_0
    move-object/from16 v2, p3

    .line 322
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->hasNewLayout()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getLayoutX()F

    move-result v10

    .line 324
    .local v10, "layoutX":F
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getLayoutY()F

    move-result v11

    .line 325
    .local v11, "layoutY":F
    add-float v3, p1, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 326
    .local v12, "newAbsoluteLeft":I
    add-float v3, p2, v11

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 327
    .local v13, "newAbsoluteTop":I
    add-float v3, p1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getLayoutWidth()F

    move-result v5

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 328
    .local v14, "newAbsoluteRight":I
    add-float v3, p2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getLayoutHeight()F

    move-result v5

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 330
    .local v15, "newAbsoluteBottom":I
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 331
    .local v9, "newScreenX":I
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 332
    .local v8, "newScreenY":I
    sub-int v7, v14, v12

    .line 333
    .local v7, "newScreenWidth":I
    sub-int v6, v15, v13

    .line 335
    .local v6, "newScreenHeight":I
    iget v3, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenX:I

    if-ne v9, v3, :cond_1

    iget v3, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenY:I

    if-ne v8, v3, :cond_1

    iget v3, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenWidth:I

    if-ne v7, v3, :cond_1

    iget v3, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenHeight:I

    if-eq v6, v3, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    move/from16 v16, v4

    .line 341
    .local v16, "layoutHasChanged":Z
    iput v9, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenX:I

    .line 342
    iput v8, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenY:I

    .line 343
    iput v7, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenWidth:I

    .line 344
    iput v6, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenHeight:I

    .line 346
    if-eqz v16, :cond_4

    .line 348
    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleUpdateLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    move/from16 v21, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_1

    .line 351
    :cond_3
    nop

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getReactTag()I

    move-result v4

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getReactTag()I

    move-result v5

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getScreenX()I

    move-result v17

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getScreenY()I

    move-result v18

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getScreenWidth()I

    move-result v19

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getScreenHeight()I

    move-result v20

    .line 351
    move-object/from16 v3, p3

    move/from16 v21, v6

    .end local v6    # "newScreenHeight":I
    .local v21, "newScreenHeight":I
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "newScreenWidth":I
    .local v17, "newScreenWidth":I
    move/from16 v7, v18

    move/from16 v18, v8

    .end local v8    # "newScreenY":I
    .local v18, "newScreenY":I
    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "newScreenX":I
    .local v19, "newScreenX":I
    move/from16 v9, v20

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUpdateLayout(IIIIII)V

    goto :goto_1

    .line 346
    .end local v17    # "newScreenWidth":I
    .end local v18    # "newScreenY":I
    .end local v19    # "newScreenX":I
    .end local v21    # "newScreenHeight":I
    .restart local v6    # "newScreenHeight":I
    .restart local v7    # "newScreenWidth":I
    .restart local v8    # "newScreenY":I
    .restart local v9    # "newScreenX":I
    :cond_4
    move/from16 v21, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    .line 361
    .end local v6    # "newScreenHeight":I
    .end local v7    # "newScreenWidth":I
    .end local v8    # "newScreenY":I
    .end local v9    # "newScreenX":I
    .restart local v17    # "newScreenWidth":I
    .restart local v18    # "newScreenY":I
    .restart local v19    # "newScreenX":I
    .restart local v21    # "newScreenHeight":I
    :goto_1
    return v16

    .line 363
    .end local v10    # "layoutX":F
    .end local v11    # "layoutY":F
    .end local v12    # "newAbsoluteLeft":I
    .end local v13    # "newAbsoluteTop":I
    .end local v14    # "newAbsoluteRight":I
    .end local v15    # "newAbsoluteBottom":I
    .end local v16    # "layoutHasChanged":Z
    .end local v17    # "newScreenWidth":I
    .end local v18    # "newScreenY":I
    .end local v19    # "newScreenX":I
    .end local v21    # "newScreenHeight":I
    :cond_5
    return v4
.end method

.method public dispose()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->reset()V

    .line 955
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, v1}, Lcom/facebook/react/common/ClearableSynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 957
    :cond_0
    return-void
.end method

.method public bridge synthetic getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .locals 3
    .param p1, "i"    # I

    .line 233
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    return-object v0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds: node has no children"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getChildCount()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHierarchyInfo()Ljava/lang/String;
    .locals 2

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getHierarchyInfoWithIndentation(Ljava/lang/StringBuilder;I)V

    .line 922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutHeight()F
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutHeight()F

    move-result v0

    return v0
.end method

.method public final getLayoutWidth()F
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutWidth()F

    move-result v0

    return v0
.end method

.method public final getLayoutX()F
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutX()F

    move-result v0

    return v0
.end method

.method public final getLayoutY()F
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutY()F

    move-result v0

    return v0
.end method

.method public final getNativeChildCount()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getNativeOffsetForChild(Lcom/facebook/react/uimanager/ReactShadowNode;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getNativeOffsetForChild(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)I

    move-result p1

    return p1
.end method

.method public final getNativeOffsetForChild(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)I
    .locals 5
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "index":I
    const/4 v1, 0x0

    .line 575
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 576
    invoke-virtual {p0, v2}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v3

    .line 577
    .local v3, "current":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    if-ne p1, v3, :cond_0

    .line 578
    const/4 v1, 0x1

    .line 579
    goto :goto_2

    .line 581
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isLayoutOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getTotalNativeChildren()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v0, v4

    .line 575
    .end local v3    # "current":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 587
    return v0

    .line 584
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getReactTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was not a child of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mReactTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method

.method public bridge synthetic getNativeParent()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getNativeParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    return-object v0
.end method

.method public final getPadding(I)F
    .locals 2
    .param p1, "spacingType"    # I

    .line 816
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaNode;->getLayoutPadding(Lcom/facebook/yoga/YogaEdge;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getParent()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    return-object v0
.end method

.method public final getReactTag()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mReactTag:I

    return v0
.end method

.method public final getRootTag()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mRootTag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 380
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mRootTag:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 631
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenWidth:I

    return v0
.end method

.method public getScreenX()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenX:I

    return v0
.end method

.method public getScreenY()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mScreenY:I

    return v0
.end method

.method public final getStyleHeight()Lcom/facebook/yoga/YogaValue;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getHeight()Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public final getStylePadding(I)Lcom/facebook/yoga/YogaValue;
    .locals 2
    .param p1, "spacingType"    # I

    .line 821
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaNode;->getPadding(Lcom/facebook/yoga/YogaEdge;)Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public final getStyleWidth()Lcom/facebook/yoga/YogaValue;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getWidth()Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public final getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method public final getTotalNativeChildren()I
    .locals 1

    .line 506
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    return v0
.end method

.method public final getViewClass()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mViewClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hasNewLayout()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasUnseenUpdates()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    return v0
.end method

.method public final hasUpdates()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->hasNewLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public bridge synthetic indexOf(Lcom/facebook/react/uimanager/ReactShadowNode;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->indexOf(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)I

    move-result p1

    return p1
.end method

.method public final indexOf(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)I
    .locals 1
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 242
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic indexOfNativeChild(Lcom/facebook/react/uimanager/ReactShadowNode;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->indexOfNativeChild(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)I

    move-result p1

    return p1
.end method

.method public final indexOfNativeChild(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)I
    .locals 1
    .param p1, "nativeChild"    # Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 478
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNode;)Z
    .locals 0

    .line 53
    check-cast p1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)Z

    move-result p1

    return p1
.end method

.method public isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNodeImpl;)Z
    .locals 2
    .param p1, "ancestorNode"    # Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 511
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    .line 513
    .local v0, "parentNode":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    const/4 v1, 0x0

    .line 515
    .local v1, "isDescendant":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 516
    if-ne v0, p1, :cond_0

    .line 517
    const/4 v1, 0x1

    .line 518
    goto :goto_1

    .line 520
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_1
    :goto_1
    return v1
.end method

.method public final isDirty()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLayoutOnly()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mIsLayoutOnly:Z

    return v0
.end method

.method public isMeasureDefined()Z
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->isMeasureDefined()Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualAnchor()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isYogaLeafNode()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isMeasureDefined()Z

    move-result v0

    return v0
.end method

.method public final markLayoutSeen()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->markLayoutSeen()V

    .line 434
    :cond_0
    return-void
.end method

.method public final markUpdateSeen()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    .line 141
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->markLayoutSeen()V

    .line 144
    :cond_0
    return-void
.end method

.method public markUpdated()V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNodeUpdated:Z

    .line 152
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    .line 153
    .local v0, "parent":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->markUpdated()V

    .line 156
    :cond_1
    return-void
.end method

.method public onAfterUpdateTransaction()V
    .locals 0

    .line 299
    return-void
.end method

.method public onBeforeLayout()V
    .locals 0

    .line 288
    return-void
.end method

.method public onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 0
    .param p1, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 309
    return-void
.end method

.method public final removeAllNativeChildren()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    :cond_1
    return-void
.end method

.method public removeAndDisposeAllChildren()V
    .locals 5

    .line 247
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 252
    .local v0, "decrease":I
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 253
    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isYogaLeafNode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v3, v1}, Lcom/facebook/yoga/YogaNode;->removeChildAt(I)Lcom/facebook/yoga/YogaNode;

    .line 256
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v3

    .line 257
    .local v3, "toRemove":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 258
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->dispose()V

    .line 260
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isLayoutOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getTotalNativeChildren()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v0, v4

    .line 252
    .end local v3    # "toRemove":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 263
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->markUpdated()V

    .line 265
    iget v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    .line 266
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->updateNativeChildrenCountInParent(I)V

    .line 267
    return-void
.end method

.method public bridge synthetic removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .locals 3
    .param p1, "i"    # I

    .line 208
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 213
    .local v0, "removed":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 215
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isYogaLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v1, p1}, Lcom/facebook/yoga/YogaNode;->removeChildAt(I)Lcom/facebook/yoga/YogaNode;

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->markUpdated()V

    .line 220
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->isLayoutOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getTotalNativeChildren()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 221
    .local v1, "decrease":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mTotalNativeChildren:I

    .line 222
    neg-int v2, v1

    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->updateNativeChildrenCountInParent(I)V

    .line 223
    return-object v0

    .line 209
    .end local v0    # "removed":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .end local v1    # "decrease":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds: node has no children"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic removeNativeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->removeNativeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object p1

    return-object p1
.end method

.method public final removeNativeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .locals 2
    .param p1, "i"    # I

    .line 455
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 457
    .local v0, "removed":Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    .line 458
    return-object v0
.end method

.method public setAlignContent(Lcom/facebook/yoga/YogaAlign;)V
    .locals 1
    .param p1, "alignContent"    # Lcom/facebook/yoga/YogaAlign;

    .line 781
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 782
    return-void
.end method

.method public setAlignItems(Lcom/facebook/yoga/YogaAlign;)V
    .locals 1
    .param p1, "alignItems"    # Lcom/facebook/yoga/YogaAlign;

    .line 776
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 777
    return-void
.end method

.method public setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V
    .locals 1
    .param p1, "alignSelf"    # Lcom/facebook/yoga/YogaAlign;

    .line 771
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 772
    return-void
.end method

.method public setBaselineFunction(Lcom/facebook/yoga/YogaBaselineFunction;)V
    .locals 1
    .param p1, "baselineFunction"    # Lcom/facebook/yoga/YogaBaselineFunction;

    .line 905
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setBaselineFunction(Lcom/facebook/yoga/YogaBaselineFunction;)V

    .line 906
    return-void
.end method

.method public setBorder(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "borderWidth"    # F

    .line 880
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setBorder(Lcom/facebook/yoga/YogaEdge;F)V

    .line 881
    return-void
.end method

.method public setDefaultPadding(IF)V
    .locals 1
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .line 826
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 827
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->updatePadding()V

    .line 828
    return-void
.end method

.method public setDisplay(Lcom/facebook/yoga/YogaDisplay;)V
    .locals 1
    .param p1, "display"    # Lcom/facebook/yoga/YogaDisplay;

    .line 796
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setDisplay(Lcom/facebook/yoga/YogaDisplay;)V

    .line 797
    return-void
.end method

.method public setFlex(F)V
    .locals 1
    .param p1, "flex"    # F

    .line 726
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlex(F)V

    .line 727
    return-void
.end method

.method public setFlexBasis(F)V
    .locals 1
    .param p1, "flexBasis"    # F

    .line 741
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexBasis(F)V

    .line 742
    return-void
.end method

.method public setFlexBasisAuto()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->setFlexBasisAuto()V

    .line 747
    return-void
.end method

.method public setFlexBasisPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 751
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexBasisPercent(F)V

    .line 752
    return-void
.end method

.method public setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V
    .locals 1
    .param p1, "flexDirection"    # Lcom/facebook/yoga/YogaFlexDirection;

    .line 761
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 762
    return-void
.end method

.method public setFlexGrow(F)V
    .locals 1
    .param p1, "flexGrow"    # F

    .line 731
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexGrow(F)V

    .line 732
    return-void
.end method

.method public setFlexShrink(F)V
    .locals 1
    .param p1, "flexShrink"    # F

    .line 736
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexShrink(F)V

    .line 737
    return-void
.end method

.method public setFlexWrap(Lcom/facebook/yoga/YogaWrap;)V
    .locals 1
    .param p1, "wrap"    # Lcom/facebook/yoga/YogaWrap;

    .line 766
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setWrap(Lcom/facebook/yoga/YogaWrap;)V

    .line 767
    return-void
.end method

.method public final setIsLayoutOnly(Z)V
    .locals 4
    .param p1, "isLayoutOnly"    # Z

    .line 493
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getParent()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must remove from no opt parent first"

    invoke-static {v0, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Must remove from native parent first"

    invoke-static {v0, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getNativeChildCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "Must remove all native children first"

    invoke-static {v1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 496
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mIsLayoutOnly:Z

    .line 497
    return-void
.end method

.method public setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V
    .locals 1
    .param p1, "justifyContent"    # Lcom/facebook/yoga/YogaJustify;

    .line 786
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 787
    return-void
.end method

.method public setLayoutDirection(Lcom/facebook/yoga/YogaDirection;)V
    .locals 1
    .param p1, "direction"    # Lcom/facebook/yoga/YogaDirection;

    .line 641
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setDirection(Lcom/facebook/yoga/YogaDirection;)V

    .line 642
    return-void
.end method

.method public setLocalData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 542
    return-void
.end method

.method public setMargin(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "margin"    # F

    .line 801
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setMargin(Lcom/facebook/yoga/YogaEdge;F)V

    .line 802
    return-void
.end method

.method public setMarginAuto(I)V
    .locals 2
    .param p1, "spacingType"    # I

    .line 811
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaNode;->setMarginAuto(Lcom/facebook/yoga/YogaEdge;)V

    .line 812
    return-void
.end method

.method public setMarginPercent(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "percent"    # F

    .line 806
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setMarginPercent(Lcom/facebook/yoga/YogaEdge;F)V

    .line 807
    return-void
.end method

.method public setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V
    .locals 1
    .param p1, "measureFunction"    # Lcom/facebook/yoga/YogaMeasureFunction;

    .line 910
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 911
    return-void
.end method

.method public setOverflow(Lcom/facebook/yoga/YogaOverflow;)V
    .locals 1
    .param p1, "overflow"    # Lcom/facebook/yoga/YogaOverflow;

    .line 791
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setOverflow(Lcom/facebook/yoga/YogaOverflow;)V

    .line 792
    return-void
.end method

.method public setPadding(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .line 832
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aput p2, v0, p1

    .line 833
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPaddingIsPercent:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 834
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->updatePadding()V

    .line 835
    return-void
.end method

.method public setPaddingPercent(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "percent"    # F

    .line 839
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPadding:[F

    aput p2, v0, p1

    .line 840
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mPaddingIsPercent:[Z

    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    .line 841
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->updatePadding()V

    .line 842
    return-void
.end method

.method public setPosition(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "position"    # F

    .line 885
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setPosition(Lcom/facebook/yoga/YogaEdge;F)V

    .line 886
    return-void
.end method

.method public setPositionPercent(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "percent"    # F

    .line 890
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setPositionPercent(Lcom/facebook/yoga/YogaEdge;F)V

    .line 891
    return-void
.end method

.method public setPositionType(Lcom/facebook/yoga/YogaPositionType;)V
    .locals 1
    .param p1, "positionType"    # Lcom/facebook/yoga/YogaPositionType;

    .line 895
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setPositionType(Lcom/facebook/yoga/YogaPositionType;)V

    .line 896
    return-void
.end method

.method public setReactTag(I)V
    .locals 0
    .param p1, "reactTag"    # I

    .line 374
    iput p1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mReactTag:I

    .line 375
    return-void
.end method

.method public final setRootTag(I)V
    .locals 0
    .param p1, "rootTag"    # I

    .line 385
    iput p1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mRootTag:I

    .line 386
    return-void
.end method

.method public setShouldNotifyOnLayout(Z)V
    .locals 0
    .param p1, "shouldNotifyOnLayout"    # Z

    .line 900
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mShouldNotifyOnLayout:Z

    .line 901
    return-void
.end method

.method public setStyleAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .line 756
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAspectRatio(F)V

    .line 757
    return-void
.end method

.method public setStyleHeight(F)V
    .locals 1
    .param p1, "heightPx"    # F

    .line 691
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setHeight(F)V

    .line 692
    return-void
.end method

.method public setStyleHeightAuto()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->setHeightAuto()V

    .line 702
    return-void
.end method

.method public setStyleHeightPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 696
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setHeightPercent(F)V

    .line 697
    return-void
.end method

.method public setStyleMaxHeight(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .line 716
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxHeight(F)V

    .line 717
    return-void
.end method

.method public setStyleMaxHeightPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 721
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxHeightPercent(F)V

    .line 722
    return-void
.end method

.method public setStyleMaxWidth(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .line 676
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxWidth(F)V

    .line 677
    return-void
.end method

.method public setStyleMaxWidthPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 681
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxWidthPercent(F)V

    .line 682
    return-void
.end method

.method public setStyleMinHeight(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .line 706
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinHeight(F)V

    .line 707
    return-void
.end method

.method public setStyleMinHeightPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 711
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinHeightPercent(F)V

    .line 712
    return-void
.end method

.method public setStyleMinWidth(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .line 666
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinWidth(F)V

    .line 667
    return-void
.end method

.method public setStyleMinWidthPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 671
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinWidthPercent(F)V

    .line 672
    return-void
.end method

.method public setStyleWidth(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .line 651
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setWidth(F)V

    .line 652
    return-void
.end method

.method public setStyleWidthAuto()V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->setWidthAuto()V

    .line 662
    return-void
.end method

.method public setStyleWidthPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 656
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setWidthPercent(F)V

    .line 657
    return-void
.end method

.method public setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0
    .param p1, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 411
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 412
    return-void
.end method

.method public final setViewClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewClassName"    # Ljava/lang/String;

    .line 390
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mViewClassName:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public final shouldNotifyOnLayout()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mShouldNotifyOnLayout:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->mViewClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->getReactTag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 0
    .param p1, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 292
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->updateProps(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 293
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->onAfterUpdateTransaction()V

    .line 294
    return-void
.end method
