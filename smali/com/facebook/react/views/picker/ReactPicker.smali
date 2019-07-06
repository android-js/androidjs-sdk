.class public Lcom/facebook/react/views/picker/ReactPicker;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "ReactPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    }
.end annotation


# instance fields
.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mMode:I

.field private mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPrimaryColor:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStagedSelection:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final measureAndLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 28
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 28
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 57
    iput p2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 28
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 28
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 28
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 70
    iput p4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/picker/ReactPicker;)Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/picker/ReactPicker;

    .line 21
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method

.method private setSelectionWithSuppressEvent(I)V
    .locals 1
    .param p1, "position"    # I

    .line 136
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setSelection(IZ)V

    .line 139
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 153
    iget v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return v0
.end method

.method public getOnSelectListener()Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method

.method public getPrimaryColor()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mPrimaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 96
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatSpinner;->onLayout(ZIIII)V

    .line 102
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatSpinner;->requestLayout()V

    .line 91
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method public setOnSelectListener(Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;)V
    .locals 0
    .param p1, "onSelectListener"    # Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    .line 108
    return-void
.end method

.method public setPrimaryColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "primaryColor"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mPrimaryColor:Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public setStagedSelection(I)V
    .locals 1
    .param p1, "selection"    # I

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method public updateStagedSelection()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setSelectionWithSuppressEvent(I)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    .line 127
    :cond_0
    return-void
.end method
