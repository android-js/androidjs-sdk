.class abstract Lcom/facebook/react/uimanager/UIViewOperationQueue$AnimationOperation;
.super Ljava/lang/Object;
.source "UIViewOperationQueue.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AnimationOperation"
.end annotation


# instance fields
.field protected final mAnimationID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$AnimationOperation;->mAnimationID:I

    return-void
.end method
