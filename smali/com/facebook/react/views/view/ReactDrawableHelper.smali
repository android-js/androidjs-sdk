.class public Lcom/facebook/react/views/view/ReactDrawableHelper;
.super Ljava/lang/Object;
.source "ReactDrawableHelper.java"


# static fields
.field private static final sResolveOutValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/ReactDrawableHelper;->sResolveOutValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDrawableFromJSDescription(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableDescriptionDict"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 37
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "type":Ljava/lang/String;
    const-string v1, "ThemeAttrAndroid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 39
    const-string v1, "attribute"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "attr":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "attr"

    const-string v6, "android"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 42
    .local v4, "attrID":I
    const-string v5, "Attribute "

    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget-object v7, Lcom/facebook/react/views/view/ReactDrawableHelper;->sResolveOutValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4, v7, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/views/view/ReactDrawableHelper;->sResolveOutValue:Landroid/util/TypedValue;

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    return-object v2

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/views/view/ReactDrawableHelper;->sResolveOutValue:Landroid/util/TypedValue;

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 54
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " couldn\'t be resolved into a drawable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_2
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " couldn\'t be found in the resource list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .end local v1    # "attr":Ljava/lang/String;
    .end local v4    # "attrID":I
    :cond_3
    const-string v1, "RippleAndroid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_8

    .line 63
    const-string v1, "color"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 65
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "color":I
    goto :goto_0

    .line 67
    .end local v1    # "color":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101042c

    sget-object v4, Lcom/facebook/react/views/view/ReactDrawableHelper;->sResolveOutValue:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/views/view/ReactDrawableHelper;->sResolveOutValue:Landroid/util/TypedValue;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 77
    .restart local v1    # "color":I
    :goto_0
    const/4 v2, 0x0

    .line 78
    .local v2, "mask":Landroid/graphics/drawable/Drawable;
    const-string v4, "borderless"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 80
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 81
    :cond_5
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v2, v4

    .line 83
    :cond_6
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v3, [[I

    const/4 v6, 0x0

    new-array v7, v6, [I

    aput-object v7, v5, v6

    new-array v3, v3, [I

    aput v1, v3, v6

    invoke-direct {v4, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v3, v4

    .line 86
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v4

    .line 73
    .end local v1    # "color":I
    .end local v2    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v3    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_7
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v2, "Attribute colorControlHighlight couldn\'t be resolved into a drawable"

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_8
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v2, "Ripple drawable is not available on android API <21"

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_9
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type for android drawable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
