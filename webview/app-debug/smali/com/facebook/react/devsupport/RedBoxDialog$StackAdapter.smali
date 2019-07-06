.class Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;
.super Landroid/widget/BaseAdapter;
.source "RedBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/RedBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x2

.field private static final VIEW_TYPE_STACKFRAME:I = 0x1

.field private static final VIEW_TYPE_TITLE:I


# instance fields
.field private final mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 126
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mTitle:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 129
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 148
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 153
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 163
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 168
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 169
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$layout;->redbox_item_title:I

    .line 172
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    nop

    .line 173
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-object v0

    .line 176
    .end local v0    # "title":Landroid/widget/TextView;
    :cond_1
    if-nez p2, :cond_2

    .line 177
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$layout;->redbox_item_frame:I

    .line 178
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 179
    new-instance v0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;-><init>(Landroid/view/View;Lcom/facebook/react/devsupport/RedBoxDialog$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 182
    .local v0, "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;

    .line 183
    .local v1, "holder":Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;
    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;->access$900(Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;->access$1000(Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter$FrameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/react/devsupport/StackTraceHelper;->formatFrameSource(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 158
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 138
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
