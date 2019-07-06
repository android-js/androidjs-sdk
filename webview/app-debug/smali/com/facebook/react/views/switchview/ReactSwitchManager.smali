.class public Lcom/facebook/react/views/switchview/ReactSwitchManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/facebook/react/views/switchview/ReactSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static final ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidSwitch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitchManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/switchview/ReactSwitchManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/switchview/ReactSwitchManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/facebook/react/views/switchview/ReactSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/switchview/ReactSwitch;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/switchview/ReactSwitch;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;

    .line 163
    sget-object v0, Lcom/facebook/react/views/switchview/ReactSwitchManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 2

    .line 97
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;-><init>(Lcom/facebook/react/views/switchview/ReactSwitchManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/switchview/ReactSwitch;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/switchview/ReactSwitch;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 107
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitch;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "view":Lcom/facebook/react/views/switchview/ReactSwitch;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setShowText(Z)V

    .line 109
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "AndroidSwitch"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1

    .line 102
    const-class v0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;

    return-object v0
.end method

.method public setDisabled(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "disabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disabled"
    .end annotation

    .line 114
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setEnabled(Z)V

    .line 115
    return-void
.end method

.method public setEnabled(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 119
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setEnabled(Z)V

    .line 120
    return-void
.end method

.method public setOn(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "on"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "on"
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->setValue(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V

    .line 125
    return-void
.end method

.method public setThumbColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbColor"
    .end annotation

    .line 143
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setThumbColor(Ljava/lang/Integer;)V

    .line 144
    return-void
.end method

.method public setThumbTintColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbTintColor"
    .end annotation

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->setThumbColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V

    .line 139
    return-void
.end method

.method public setTrackColorForFalse(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "trackColorForFalse"
    .end annotation

    .line 148
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColorForFalse(Ljava/lang/Integer;)V

    .line 149
    return-void
.end method

.method public setTrackColorForTrue(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "trackColorForTrue"
    .end annotation

    .line 153
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColorForTrue(Ljava/lang/Integer;)V

    .line 154
    return-void
.end method

.method public setTrackTintColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "trackTintColor"
    .end annotation

    .line 158
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    .line 159
    return-void
.end method

.method public setValue(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/switchview/ReactSwitch;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "value"
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOn(Z)V

    .line 133
    sget-object v0, Lcom/facebook/react/views/switchview/ReactSwitchManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    return-void
.end method
