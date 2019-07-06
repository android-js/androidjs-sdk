.class public Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;
.super Ljava/lang/Object;
.source "TextLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/text/TextLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetSpanOperation"
.end annotation


# instance fields
.field protected end:I

.field protected start:I

.field protected what:Lcom/facebook/react/views/text/ReactSpan;


# direct methods
.method constructor <init>(IILcom/facebook/react/views/text/ReactSpan;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Lcom/facebook/react/views/text/ReactSpan;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p1, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->start:I

    .line 323
    iput p2, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->end:I

    .line 324
    iput-object p3, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    .line 325
    return-void
.end method


# virtual methods
.method public execute(Landroid/text/SpannableStringBuilder;I)V
    .locals 4
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;
    .param p2, "priority"    # I

    .line 330
    const/16 v0, 0x22

    .line 331
    .local v0, "spanFlags":I
    iget v1, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->start:I

    if-nez v1, :cond_0

    .line 332
    const/16 v0, 0x12

    .line 335
    :cond_0
    const v1, -0xff0001

    and-int/2addr v0, v1

    .line 336
    shl-int/lit8 v1, p2, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 338
    iget-object v1, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    iget v2, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->start:I

    iget v3, p0, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->end:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 339
    return-void
.end method
