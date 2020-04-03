.class public Lcom/facebook/react/uimanager/AccessibilityDelegateUtil;
.super Ljava/lang/Object;
.source "AccessibilityDelegateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(Landroid/view/View;)V
    .locals 3

    .line 91
    sget v0, Lcom/facebook/react/R$id;->accessibility_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    sget v1, Lcom/facebook/react/R$id;->accessibility_role:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 95
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    new-instance v2, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$1;-><init>(Ljava/lang/String;Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;Landroid/view/View;)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method

.method public static setRole(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;Landroid/content/Context;)V
    .locals 6

    if-nez p1, :cond_0

    .line 128
    sget-object p1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->NONE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->getValue(Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 132
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 133
    sget v0, Lcom/facebook/react/R$string;->link_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v4, Landroid/text/style/URLSpan;

    invoke-direct {v4, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v4, Landroid/text/style/URLSpan;

    invoke-direct {v4, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v4, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_2
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SEARCH:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    sget v0, Lcom/facebook/react/R$string;->search_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 150
    :cond_3
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    sget v0, Lcom/facebook/react/R$string;->image_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 153
    :cond_4
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    sget v0, Lcom/facebook/react/R$string;->image_button_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 156
    :cond_5
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->ADJUSTABLE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    sget v0, Lcom/facebook/react/R$string;->adjustable_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 159
    :cond_6
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->HEADER:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    sget v0, Lcom/facebook/react/R$string;->header_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {v2, v1, v2, v1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p2

    .line 163
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 166
    :cond_7
    sget-object p2, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {p1, p2}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 167
    invoke-virtual {p0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    :cond_8
    return-void
.end method
