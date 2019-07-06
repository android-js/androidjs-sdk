.class public Lcom/facebook/react/modules/i18nmanager/I18nUtil;
.super Ljava/lang/Object;
.source "I18nUtil.java"


# static fields
.field private static final KEY_FOR_PERFS_MAKE_RTL_FLIP_LEFT_AND_RIGHT_STYLES:Ljava/lang/String; = "RCTI18nUtil_makeRTLFlipLeftAndRightStyles"

.field private static final KEY_FOR_PREFS_ALLOWRTL:Ljava/lang/String; = "RCTI18nUtil_allowRTL"

.field private static final KEY_FOR_PREFS_FORCERTL:Ljava/lang/String; = "RCTI18nUtil_forceRTL"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.facebook.react.modules.i18nmanager.I18nUtil"

.field private static sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;
    .locals 1

    .line 33
    sget-object v0, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-direct {v0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    .line 36
    :cond_0
    sget-object v0, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    return-object v0
.end method

.method private isDevicePreferredLanguageRTL()Z
    .locals 2

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 90
    .local v0, "directionality":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPrefSet(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 94
    nop

    .line 95
    const-string v0, "com.facebook.react.modules.i18nmanager.I18nUtil"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isRTLAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const-string v0, "RCTI18nUtil_allowRTL"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isPrefSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRTLForced(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const-string v0, "RCTI18nUtil_forceRTL"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isPrefSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setPref(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 100
    nop

    .line 101
    const-string v0, "com.facebook.react.modules.i18nmanager.I18nUtil"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void
.end method


# virtual methods
.method public allowRTL(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRTL"    # Z

    .line 63
    const-string v0, "RCTI18nUtil_allowRTL"

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->setPref(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public doLeftAndRightSwapInRTL(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const-string v0, "RCTI18nUtil_makeRTLFlipLeftAndRightStyles"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isPrefSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public forceRTL(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceRTL"    # Z

    .line 83
    const-string v0, "RCTI18nUtil_forceRTL"

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->setPref(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTLForced(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 47
    return v1

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTLAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isDevicePreferredLanguageRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1
.end method

.method public swapLeftAndRightInRTL(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flip"    # Z

    .line 71
    const-string v0, "RCTI18nUtil_makeRTLFlipLeftAndRightStyles"

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->setPref(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 72
    return-void
.end method
