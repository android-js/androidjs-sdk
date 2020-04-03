.class Lcom/facebook/react/uimanager/AccessibilityHelper;
.super Ljava/lang/Object;
.source "AccessibilityHelper.java"


# static fields
.field private static final BUTTON:Ljava/lang/String; = "button"

.field private static final BUTTON_DELEGATE:Landroid/view/View$AccessibilityDelegate;

.field private static final RADIOBUTTON_CHECKED:Ljava/lang/String; = "radiobutton_checked"

.field private static final RADIOBUTTON_CHECKED_DELEGATE:Landroid/view/View$AccessibilityDelegate;

.field private static final RADIOBUTTON_UNCHECKED:Ljava/lang/String; = "radiobutton_unchecked"

.field private static final RADIOBUTTON_UNCHECKED_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityHelper$1;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/AccessibilityHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityHelper;->BUTTON_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    .line 40
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityHelper$2;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/AccessibilityHelper$2;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityHelper;->RADIOBUTTON_CHECKED_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    .line 58
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityHelper$3;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/AccessibilityHelper$3;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityHelper;->RADIOBUTTON_UNCHECKED_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static updateAccessibilityComponentType(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x521dd8ce

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x4eb523e4

    if-eq v2, v3, :cond_2

    const v3, -0x2a90b3ab

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "radiobutton_checked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "radiobutton_unchecked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "button"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 89
    :cond_5
    sget-object p1, Lcom/facebook/react/uimanager/AccessibilityHelper;->RADIOBUTTON_UNCHECKED_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 86
    :cond_6
    sget-object p1, Lcom/facebook/react/uimanager/AccessibilityHelper;->RADIOBUTTON_CHECKED_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 83
    :cond_7
    sget-object p1, Lcom/facebook/react/uimanager/AccessibilityHelper;->BUTTON_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :goto_1
    return-void
.end method
