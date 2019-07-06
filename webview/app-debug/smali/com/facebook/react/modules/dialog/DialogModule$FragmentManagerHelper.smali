.class Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;
.super Ljava/lang/Object;
.source "DialogModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/dialog/DialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentManagerHelper"
.end annotation


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFragmentToShow:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/react/modules/dialog/DialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/dialog/DialogModule;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .line 88
    iput-object p1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->this$0:Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    .line 90
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/modules/dialog/DialogModule;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "supportFragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .line 84
    iput-object p1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->this$0:Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    .line 86
    iput-object p2, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 87
    return-void
.end method

.method private dismissExisting()V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->isUsingSupportLibrary()Z

    move-result v0

    const-string v1, "com.facebook.catalyst.react.dialog.DialogModule"

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/dialog/SupportAlertFragment;

    .line 110
    .local v0, "oldFragment":Lcom/facebook/react/modules/dialog/SupportAlertFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->dismiss()V

    .line 113
    .end local v0    # "oldFragment":Lcom/facebook/react/modules/dialog/SupportAlertFragment;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/dialog/AlertFragment;

    .line 116
    .local v0, "oldFragment":Lcom/facebook/react/modules/dialog/AlertFragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/modules/dialog/AlertFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/facebook/react/modules/dialog/AlertFragment;->dismiss()V

    .line 120
    .end local v0    # "oldFragment":Lcom/facebook/react/modules/dialog/AlertFragment;
    :cond_2
    :goto_0
    return-void
.end method

.method private isUsingSupportLibrary()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public showNewAlert(ZLandroid/os/Bundle;Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .param p1, "isInForeground"    # Z
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "actionCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 123
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 125
    invoke-direct {p0}, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->dismissExisting()V

    .line 127
    if-eqz p3, :cond_0

    new-instance v0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    iget-object v1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->this$0:Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-direct {v0, v1, p3}, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;-><init>(Lcom/facebook/react/modules/dialog/DialogModule;Lcom/facebook/react/bridge/Callback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    .local v0, "actionListener":Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->isUsingSupportLibrary()Z

    move-result v1

    const-string v2, "com.facebook.catalyst.react.dialog.DialogModule"

    const-string v3, "cancelable"

    if-eqz v1, :cond_3

    .line 131
    new-instance v1, Lcom/facebook/react/modules/dialog/SupportAlertFragment;

    invoke-direct {v1, v0, p2}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;-><init>(Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;Landroid/os/Bundle;)V

    .line 132
    .local v1, "alertFragment":Lcom/facebook/react/modules/dialog/SupportAlertFragment;
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->setCancelable(Z)V

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    iput-object v1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentToShow:Ljava/lang/Object;

    .line 140
    .end local v1    # "alertFragment":Lcom/facebook/react/modules/dialog/SupportAlertFragment;
    :goto_1
    goto :goto_2

    .line 141
    :cond_3
    new-instance v1, Lcom/facebook/react/modules/dialog/AlertFragment;

    invoke-direct {v1, v0, p2}, Lcom/facebook/react/modules/dialog/AlertFragment;-><init>(Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;Landroid/os/Bundle;)V

    .line 142
    .local v1, "alertFragment":Lcom/facebook/react/modules/dialog/AlertFragment;
    if-eqz p1, :cond_5

    .line 143
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/modules/dialog/AlertFragment;->setCancelable(Z)V

    .line 146
    :cond_4
    iget-object v3, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/modules/dialog/AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_5
    iput-object v1, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentToShow:Ljava/lang/Object;

    .line 151
    .end local v1    # "alertFragment":Lcom/facebook/react/modules/dialog/AlertFragment;
    :goto_2
    return-void
.end method

.method public showPendingAlert()V
    .locals 3

    .line 94
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 95
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentToShow:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->isUsingSupportLibrary()Z

    move-result v0

    const-string v1, "com.facebook.catalyst.react.dialog.DialogModule"

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentToShow:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/modules/dialog/SupportAlertFragment;

    iget-object v2, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentToShow:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/modules/dialog/AlertFragment;

    iget-object v2, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/modules/dialog/AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 103
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$FragmentManagerHelper;->mFragmentToShow:Ljava/lang/Object;

    .line 104
    return-void
.end method
