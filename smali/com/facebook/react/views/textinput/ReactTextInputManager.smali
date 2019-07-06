.class public Lcom/facebook/react/views/textinput/ReactTextInputManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ReactTextInputManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidTextInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;,
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;,
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;,
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "Lcom/facebook/react/views/textinput/ReactEditText;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLUR_TEXT_INPUT:I = 0x2

.field private static final EMPTY_FILTERS:[Landroid/text/InputFilter;

.field private static final FOCUS_TEXT_INPUT:I = 0x1

.field private static final IME_ACTION_ID:I = 0x670

.field private static final INPUT_TYPE_KEYBOARD_DECIMAL_PAD:I = 0x2002

.field private static final INPUT_TYPE_KEYBOARD_NUMBERED:I = 0x3002

.field private static final INPUT_TYPE_KEYBOARD_NUMBER_PAD:I = 0x2

.field private static final KEYBOARD_TYPE_DECIMAL_PAD:Ljava/lang/String; = "decimal-pad"

.field private static final KEYBOARD_TYPE_EMAIL_ADDRESS:Ljava/lang/String; = "email-address"

.field private static final KEYBOARD_TYPE_FLAGS:I = 0x3033

.field private static final KEYBOARD_TYPE_NUMBER_PAD:Ljava/lang/String; = "number-pad"

.field private static final KEYBOARD_TYPE_NUMERIC:Ljava/lang/String; = "numeric"

.field private static final KEYBOARD_TYPE_PHONE_PAD:Ljava/lang/String; = "phone-pad"

.field private static final KEYBOARD_TYPE_VISIBLE_PASSWORD:Ljava/lang/String; = "visible-password"

.field private static final PASSWORD_VISIBILITY_FLAG:I = 0x10

.field protected static final REACT_CLASS:Ljava/lang/String; = "AndroidTextInput"

.field private static final SPACING_TYPES:[I

.field public static final TAG:Ljava/lang/String;

.field private static final UNSET:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->SPACING_TYPES:[I

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->EMPTY_FILTERS:[Landroid/text/InputFilter;

    return-void

    :array_0
    .array-data 4
        0x8
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method

.method private static checkPasswordType(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 2
    .param p0, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 749
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x3002

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 752
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 757
    :cond_0
    return-void
.end method

.method private static parseNumericFontWeight(Ljava/lang/String;)I
    .locals 3
    .param p0, "fontWeightString"    # Ljava/lang/String;

    .line 768
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-lt v1, v2, :cond_0

    .line 770
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 768
    :goto_0
    return v0
.end method

.method private setCursorColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 386
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 387
    .local v0, "cursorDrawableResField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 391
    .local v2, "drawableResId":I
    if-nez v2, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 396
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    .line 397
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 399
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v3, v4, v1

    .line 402
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    const-class v5, Landroid/widget/TextView;

    const-string v6, "mEditor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 403
    .local v5, "editorField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 404
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 405
    .local v6, "editor":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mCursorDrawable"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 406
    .local v7, "cursorDrawableField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 407
    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cursorDrawableResField":Ljava/lang/reflect/Field;
    .end local v2    # "drawableResId":I
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v5    # "editorField":Ljava/lang/reflect/Field;
    .end local v6    # "editor":Ljava/lang/Object;
    .end local v7    # "cursorDrawableField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0

    .line 408
    :catch_1
    move-exception v0

    .line 411
    :goto_0
    nop

    .line 412
    return-void
.end method

.method private static updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V
    .locals 2
    .param p0, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p1, "flagsToUnset"    # I
    .param p2, "flagsToSet"    # I

    .line 777
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setStagedInputType(I)V

    .line 778
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 65
    check-cast p2, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 842
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 843
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager$2;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 865
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 908
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 114
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/textinput/ReactEditText;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/textinput/ReactEditText;
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 105
    new-instance v0, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/textinput/ReactEditText;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "editText":Lcom/facebook/react/views/textinput/ReactEditText;
    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v1

    .line 107
    .local v1, "inputType":I
    const v2, -0x20001

    and-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setInputType(I)V

    .line 108
    const-string v2, "done"

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setReturnKeyType(Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 170
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "focusTextInput"

    const-string v3, "blurTextInput"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 130
    const-string v1, "captured"

    const-string v2, "bubbled"

    const-string v3, "onSubmitEditing"

    const-string v4, "onSubmitEditingCapture"

    invoke-static {v2, v3, v1, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 128
    const-string v4, "phasedRegistrationNames"

    invoke-static {v4, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 126
    const-string v5, "topSubmitEditing"

    invoke-virtual {v0, v5, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 136
    const-string v3, "onEndEditing"

    const-string v5, "onEndEditingCapture"

    invoke-static {v2, v3, v1, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 134
    invoke-static {v4, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 132
    const-string v5, "topEndEditing"

    invoke-virtual {v0, v5, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 141
    const-string v3, "onTextInput"

    const-string v5, "onTextInputCapture"

    invoke-static {v2, v3, v1, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 139
    invoke-static {v4, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 137
    const-string v5, "topTextInput"

    invoke-virtual {v0, v5, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 146
    const-string v3, "onFocus"

    const-string v5, "onFocusCapture"

    invoke-static {v2, v3, v1, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 144
    invoke-static {v4, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 142
    const-string v5, "topFocus"

    invoke-virtual {v0, v5, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 151
    const-string v3, "onBlur"

    const-string v5, "onBlurCapture"

    invoke-static {v2, v3, v1, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 149
    invoke-static {v4, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 147
    const-string v5, "topBlur"

    invoke-virtual {v0, v5, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 156
    const-string v3, "onKeyPress"

    const-string v5, "onKeyPressCapture"

    invoke-static {v2, v3, v1, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 154
    invoke-static {v4, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 152
    const-string v2, "topKeyPress"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 163
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 164
    invoke-static {v1}, Lcom/facebook/react/views/scroll/ScrollEventType;->getJSEventName(Lcom/facebook/react/views/scroll/ScrollEventType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "registrationName"

    const-string v3, "onScroll"

    invoke-static {v2, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1018
    nop

    .line 1022
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1024
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1026
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1028
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1020
    const-string v1, "none"

    const-string v3, "characters"

    const-string v5, "words"

    const-string v7, "sentences"

    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1018
    const-string v1, "AutoCapitalizationType"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "AndroidTextInput"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/LayoutShadowNode;",
            ">;"
        }
    .end annotation

    .line 119
    const-class v0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/textinput/ReactEditText;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 743
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 744
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->commitStagedInputType()V

    .line 745
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "reactEditText"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 178
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocusFromJS()V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->requestFocusFromJS()V

    .line 181
    nop

    .line 186
    :goto_0
    return-void
.end method

.method public setAllowFontScaling(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "allowFontScaling"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "allowFontScaling"
    .end annotation

    .line 352
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setAllowFontScaling(Z)V

    .line 353
    return-void
.end method

.method public setAutoCapitalize(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autoCapitalize"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoCapitalize"
    .end annotation

    .line 645
    const/16 v0, 0x7000

    invoke-static {p1, v0, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 650
    return-void
.end method

.method public setAutoCorrect(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autoCorrect"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoCorrect"
    .end annotation

    .line 616
    if-eqz p2, :cond_1

    .line 620
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x80000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 616
    :goto_0
    const v1, 0x88000

    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 623
    return-void
.end method

.method public setBlurOnSubmit(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "blurOnSubmit"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "blurOnSubmit"
    .end annotation

    .line 316
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setBlurOnSubmit(Ljava/lang/Boolean;)V

    .line 317
    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "index"    # I
    .param p3, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor"
        }
    .end annotation

    .line 736
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p3, :cond_0

    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    int-to-float v1, v1

    .line 737
    .local v1, "rgbComponent":F
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    .line 738
    .local v0, "alphaComponent":F
    :goto_1
    sget-object v2, Lcom/facebook/react/views/textinput/ReactTextInputManager;->SPACING_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderColor(IFF)V

    .line 739
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "index"    # I
    .param p3, "borderRadius"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius"
        }
    .end annotation

    .line 702
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 706
    :cond_0
    if-nez p2, :cond_1

    .line 707
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderRadius(F)V

    goto :goto_0

    .line 709
    :cond_1
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderRadius(FI)V

    .line 711
    :goto_0
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "borderStyle"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    .line 715
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderStyle(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "index"    # I
    .param p3, "width"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth"
        }
    .end annotation

    .line 726
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 729
    :cond_0
    sget-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderWidth(IF)V

    .line 730
    return-void
.end method

.method public setCaretHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "caretHidden"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "caretHidden"
    .end annotation

    .line 421
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setCursorVisible(Z)V

    .line 422
    return-void
.end method

.method public setColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .line 441
    if-nez p2, :cond_0

    .line 442
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextColor(I)V

    .line 446
    :goto_0
    return-void
.end method

.method public setContextMenuHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "contextMenuHidden"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "contextMenuHidden"
    .end annotation

    .line 426
    move v0, p2

    .line 427
    .local v0, "_contextMenuHidden":Z
    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Z)V

    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 432
    return-void
.end method

.method public setDisableFullscreenUI(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "disableFullscreenUI"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disableFullscreenUI"
    .end annotation

    .line 684
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setDisableFullscreenUI(Z)V

    .line 685
    return-void
.end method

.method public setEditable(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "editable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "editable"
    .end annotation

    .line 524
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setEnabled(Z)V

    .line 525
    return-void
.end method

.method public setFontFamily(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontFamily"
    .end annotation

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "style":I
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 218
    :cond_0
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 218
    invoke-virtual {v1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 222
    .local v1, "newTypeface":Landroid/graphics/Typeface;
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    return-void
.end method

.method public setFontSize(Lcom/facebook/react/views/textinput/ReactEditText;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontSize"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 14.0f
        name = "fontSize"
    .end annotation

    .line 209
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setFontSize(F)V

    .line 210
    return-void
.end method

.method public setFontStyle(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontStyleString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontStyle"
    .end annotation

    .line 260
    const/4 v0, -0x1

    .line 261
    .local v0, "fontStyle":I
    const-string v1, "italic"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const/4 v0, 0x2

    goto :goto_0

    .line 263
    :cond_0
    const-string v1, "normal"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const/4 v0, 0x0

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 268
    .local v1, "currentTypeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 269
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 271
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 272
    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 274
    :cond_3
    return-void
.end method

.method public setFontWeight(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontWeightString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontWeight"
    .end annotation

    .line 236
    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 237
    invoke-static {p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->parseNumericFontWeight(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 238
    .local v1, "fontWeightNumeric":I
    :goto_0
    const/4 v2, -0x1

    .line 239
    .local v2, "fontWeight":I
    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_3

    const-string v4, "bold"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    const-string v4, "normal"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eq v1, v0, :cond_4

    if-ge v1, v3, :cond_4

    .line 243
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 240
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 245
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 246
    .local v0, "currentTypeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_5

    .line 247
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 249
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 250
    invoke-virtual {p1, v0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 252
    :cond_6
    return-void
.end method

.method public setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "importantForAutofill"
    .end annotation

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 293
    .local v0, "mode":I
    const-string v1, "no"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const/4 v0, 0x2

    goto :goto_0

    .line 295
    :cond_1
    const-string v1, "noExcludeDescendants"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    const/16 v0, 0x8

    goto :goto_0

    .line 297
    :cond_2
    const-string v1, "yes"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    :cond_3
    const-string v1, "yesExcludeDescendants"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    const/4 v0, 0x4

    .line 302
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setImportantForAutofill(I)V

    .line 303
    return-void
.end method

.method public setInlineImageLeft(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "resource"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "inlineImageLeft"
    .end annotation

    .line 513
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 514
    .local v0, "id":I
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 515
    return-void
.end method

.method public setInlineImagePadding(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "padding"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "inlineImagePadding"
    .end annotation

    .line 519
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setCompoundDrawablePadding(I)V

    .line 520
    return-void
.end method

.method public setKeyboardType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "keyboardType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "keyboardType"
    .end annotation

    .line 654
    const/4 v0, 0x1

    .line 655
    .local v0, "flagsToSet":I
    const-string v1, "numeric"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const/16 v0, 0x3002

    goto :goto_0

    .line 657
    :cond_0
    const-string v1, "number-pad"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    const/4 v0, 0x2

    goto :goto_0

    .line 659
    :cond_1
    const-string v1, "decimal-pad"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    const/16 v0, 0x2002

    goto :goto_0

    .line 661
    :cond_2
    const-string v1, "email-address"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 662
    const/16 v0, 0x21

    goto :goto_0

    .line 663
    :cond_3
    const-string v1, "phone-pad"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 664
    const/4 v0, 0x3

    goto :goto_0

    .line 665
    :cond_4
    const-string v1, "visible-password"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 668
    const/16 v0, 0x90

    .line 670
    :cond_5
    :goto_0
    const/16 v1, 0x3033

    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 674
    invoke-static {p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->checkPasswordType(Lcom/facebook/react/views/textinput/ReactEditText;)V

    .line 675
    return-void
.end method

.method public setLetterSpacing(Lcom/facebook/react/views/textinput/ReactEditText;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "letterSpacing"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "letterSpacing"
    .end annotation

    .line 347
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setLetterSpacingPt(F)V

    .line 348
    return-void
.end method

.method public setMaxFontSizeMultiplier(Lcom/facebook/react/views/textinput/ReactEditText;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "maxFontSizeMultiplier"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "maxFontSizeMultiplier"
    .end annotation

    .line 227
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setMaxFontSizeMultiplier(F)V

    .line 228
    return-void
.end method

.method public setMaxLength(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "maxLength"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxLength"
    .end annotation

    .line 534
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 535
    .local v0, "currentFilters":[Landroid/text/InputFilter;
    sget-object v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;->EMPTY_FILTERS:[Landroid/text/InputFilter;

    .line 537
    .local v1, "newFilters":[Landroid/text/InputFilter;
    if-nez p2, :cond_3

    .line 538
    array-length v2, v0

    if-lez v2, :cond_8

    .line 539
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 540
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/text/InputFilter;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 541
    aget-object v4, v0, v3

    instance-of v4, v4, Landroid/text/InputFilter$LengthFilter;

    if-nez v4, :cond_0

    .line 542
    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 546
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    move-object v1, v3

    check-cast v1, [Landroid/text/InputFilter;

    .line 548
    .end local v2    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/text/InputFilter;>;"
    :cond_2
    goto :goto_2

    .line 550
    :cond_3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_7

    .line 551
    move-object v1, v0

    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, "replaced":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 554
    aget-object v6, v0, v5

    instance-of v6, v6, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_4

    .line 555
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v5

    .line 556
    const/4 v2, 0x1

    .line 553
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 559
    .end local v5    # "i":I
    :cond_5
    if-nez v2, :cond_6

    .line 560
    array-length v5, v0

    add-int/2addr v5, v4

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 561
    array-length v4, v0

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    array-length v3, v0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v3

    .line 564
    .end local v2    # "replaced":Z
    :cond_6
    goto :goto_2

    .line 565
    :cond_7
    new-array v1, v4, [Landroid/text/InputFilter;

    .line 566
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    .line 570
    :cond_8
    :goto_2
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 571
    return-void
.end method

.method public setMostRecentEventCount(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "mostRecentEventCount"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "mostRecentEventCount"
    .end annotation

    .line 416
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setMostRecentEventCount(I)V

    .line 417
    return-void
.end method

.method public setMultiline(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "multiline"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "multiline"
    .end annotation

    .line 627
    const/4 v0, 0x0

    const/high16 v1, 0x20000

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    :goto_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x20000

    :cond_1
    invoke-static {p1, v2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 631
    return-void
.end method

.method public setNumLines(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "numLines"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "numberOfLines"
    .end annotation

    .line 529
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setLines(I)V

    .line 530
    return-void
.end method

.method public setOnContentSizeChange(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onContentSizeChange"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onContentSizeChange"
    .end annotation

    .line 321
    if-eqz p2, :cond_0

    .line 322
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setContentSizeWatcher(Lcom/facebook/react/views/textinput/ContentSizeWatcher;)V

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setContentSizeWatcher(Lcom/facebook/react/views/textinput/ContentSizeWatcher;)V

    .line 326
    :goto_0
    return-void
.end method

.method public setOnKeyPress(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onKeyPress"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onKeyPress"
    .end annotation

    .line 339
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnKeyPress(Z)V

    .line 340
    return-void
.end method

.method public setOnScroll(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onScroll"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onScroll"
    .end annotation

    .line 330
    if-eqz p2, :cond_0

    .line 331
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setScrollWatcher(Lcom/facebook/react/views/textinput/ScrollWatcher;)V

    goto :goto_0

    .line 333
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setScrollWatcher(Lcom/facebook/react/views/textinput/ScrollWatcher;)V

    .line 335
    :goto_0
    return-void
.end method

.method public setOnSelectionChange(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onSelectionChange"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onSelectionChange"
    .end annotation

    .line 307
    if-eqz p2, :cond_0

    .line 308
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelectionWatcher(Lcom/facebook/react/views/textinput/SelectionWatcher;)V

    goto :goto_0

    .line 310
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelectionWatcher(Lcom/facebook/react/views/textinput/SelectionWatcher;)V

    .line 312
    :goto_0
    return-void
.end method

.method public setPlaceholder(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "placeholder"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "placeholder"
    .end annotation

    .line 357
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method public setPlaceholderTextColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "placeholderTextColor"
    .end annotation

    .line 362
    if-nez p2, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColorHint(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHintTextColor(I)V

    .line 367
    :goto_0
    return-void
.end method

.method public setReturnKeyLabel(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "returnKeyLabel"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "returnKeyLabel"
    .end annotation

    .line 691
    const/16 v0, 0x670

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 692
    return-void
.end method

.method public setReturnKeyType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "returnKeyType"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "returnKeyType"
    .end annotation

    .line 679
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setReturnKeyType(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public setSecureTextEntry(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "password"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "secureTextEntry"
    .end annotation

    .line 635
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x90

    :goto_0
    if-eqz p2, :cond_1

    const/16 v0, 0x80

    :cond_1
    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 640
    invoke-static {p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->checkPasswordType(Lcom/facebook/react/views/textinput/ReactEditText;)V

    .line 641
    return-void
.end method

.method public setSelectTextOnFocus(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "selectTextOnFocus"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "selectTextOnFocus"
    .end annotation

    .line 436
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelectAllOnFocus(Z)V

    .line 437
    return-void
.end method

.method public setSelection(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "selection"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selection"
    .end annotation

    .line 278
    if-nez p2, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    const-string v0, "start"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "end"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelection(II)V

    .line 285
    :cond_1
    return-void
.end method

.method public setSelectionColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectionColor"
    .end annotation

    .line 371
    if-nez p2, :cond_0

    .line 372
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColorHighlight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHighlightColor(I)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHighlightColor(I)V

    .line 377
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setCursorColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    .line 378
    return-void
.end method

.method public setTextAlign(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "textAlign"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textAlign"
    .end annotation

    .line 471
    const-string v0, "justify"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x1a

    if-eqz v0, :cond_1

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 473
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setJustificationMode(I)V

    .line 475
    :cond_0
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 477
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 478
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setJustificationMode(I)V

    .line 481
    :cond_2
    if-eqz p2, :cond_7

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 483
    :cond_3
    const-string v0, "left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 485
    :cond_4
    const-string v0, "right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 487
    :cond_5
    const-string v0, "center"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 490
    :cond_6
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_7
    :goto_0
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    .line 494
    :goto_1
    return-void
.end method

.method public setTextAlignVertical(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "textAlignVertical"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textAlignVertical"
    .end annotation

    .line 498
    if-eqz p2, :cond_4

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    const-string v0, "top"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 502
    :cond_1
    const-string v0, "bottom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 504
    :cond_2
    const-string v0, "center"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 507
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlignVertical: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    .line 509
    :goto_1
    return-void
.end method

.method public setTextContentType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autocomplete"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoComplete"
    .end annotation

    .line 576
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 577
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 581
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setImportantForAutofill(I)V

    goto/16 :goto_0

    .line 582
    :cond_1
    const-string v1, "username"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :cond_2
    const-string v1, "password"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 585
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    :cond_3
    const-string v1, "email"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 587
    const-string v0, "emailAddress"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :cond_4
    const-string v1, "name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 589
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    :cond_5
    const-string v1, "tel"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 591
    const-string v0, "phone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :cond_6
    const-string v1, "street-address"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 593
    const-string v0, "postalAddress"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :cond_7
    const-string v1, "postal-code"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 595
    const-string v0, "postalCode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_8
    const-string v1, "cc-number"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 597
    const-string v0, "creditCardNumber"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_9
    const-string v1, "cc-csc"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 599
    const-string v0, "creditCardSecurityCode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_a
    const-string v1, "cc-exp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 601
    const-string v0, "creditCardExpirationDate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_b
    const-string v1, "cc-exp-month"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 603
    const-string v0, "creditCardExpirationMonth"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_c
    const-string v1, "cc-exp-year"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 605
    const-string v0, "creditCardExpirationYear"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_d
    const-string v1, "off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 607
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setImportantForAutofill(I)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_e
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autocomplete option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnderlineColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "underlineColor"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "underlineColorAndroid"
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    .line 454
    .local v1, "drawableToMutate":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 456
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/facebook/react/views/textinput/ReactTextInputManager;->TAG:Ljava/lang/String;

    const-string v4, "NullPointerException when setting underlineColorAndroid for TextInput"

    invoke-static {v3, v4, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 463
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 467
    :goto_1
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateExtraData(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 190
    instance-of v0, p2, Lcom/facebook/react/views/text/ReactTextUpdate;

    if-eqz v0, :cond_1

    .line 191
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 193
    .local v0, "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    nop

    .line 194
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingLeft()F

    move-result v1

    float-to-int v1, v1

    .line 195
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingTop()F

    move-result v2

    float-to-int v2, v2

    .line 196
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingRight()F

    move-result v3

    float-to-int v3, v3

    .line 197
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingBottom()F

    move-result v4

    float-to-int v4, v4

    .line 193
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setPadding(IIII)V

    .line 199
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    .line 201
    .local v1, "spannable":Landroid/text/Spannable;
    invoke-static {v1, p1}, Lcom/facebook/react/views/text/TextInlineImageSpan;->possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 203
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->maybeSetText(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    .line 205
    .end local v0    # "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    :cond_1
    return-void
.end method
