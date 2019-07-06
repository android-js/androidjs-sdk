.class Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"

# interfaces
.implements Lcom/facebook/react/animation/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->startAnimationForNativeView(ILcom/facebook/react/animation/Animation;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

.field final synthetic val$animationCallback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$animationId:I


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;ILcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 718
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    iput p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->val$animationId:I

    iput-object p3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->val$animationCallback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .line 734
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-static {v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->access$000(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)Lcom/facebook/react/animation/AnimationRegistry;

    move-result-object v0

    iget v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->val$animationId:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/animation/AnimationRegistry;->removeAnimation(I)Lcom/facebook/react/animation/Animation;

    move-result-object v0

    .line 736
    .local v0, "removedAnimation":Lcom/facebook/react/animation/Animation;
    const-string v1, "Animation was already removed somehow!"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->val$animationCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v1, :cond_0

    .line 738
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 740
    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 5

    .line 721
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-static {v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->access$000(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)Lcom/facebook/react/animation/AnimationRegistry;

    move-result-object v0

    iget v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->val$animationId:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/animation/AnimationRegistry;->removeAnimation(I)Lcom/facebook/react/animation/Animation;

    move-result-object v0

    .line 726
    .local v0, "removedAnimation":Lcom/facebook/react/animation/Animation;
    const-string v1, "Animation was already removed somehow!"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;->val$animationCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v1, :cond_0

    .line 728
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 730
    :cond_0
    return-void
.end method
