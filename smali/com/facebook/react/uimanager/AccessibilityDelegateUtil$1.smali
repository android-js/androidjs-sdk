.class final Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "AccessibilityDelegateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/AccessibilityDelegateUtil;->setDelegate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessibilityHint:Ljava/lang/String;

.field final synthetic val$accessibilityRole:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;Landroid/view/View;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$accessibilityHint:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$accessibilityRole:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    iput-object p3, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 104
    iget-object p1, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$accessibilityHint:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$accessibilityHint:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$accessibilityHint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$accessibilityRole:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    iget-object v0, p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil;->setRole(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;Landroid/content/Context;)V

    return-void
.end method
