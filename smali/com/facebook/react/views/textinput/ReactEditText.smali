.class public Lcom/facebook/react/views/textinput/ReactEditText;
.super Landroid/widget/EditText;
.source "ReactEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;,
        Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;
    }
.end annotation


# static fields
.field private static final sKeyListener:Landroid/text/method/KeyListener;


# instance fields
.field private mBlurOnSubmit:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContainsImages:Z

.field private mContentSizeWatcher:Lcom/facebook/react/views/textinput/ContentSizeWatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDefaultGravityHorizontal:I

.field private mDefaultGravityVertical:I

.field private mDetectScrollMovement:Z

.field private mDisableFullscreen:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsJSSettingFocus:Z

.field private mIsSettingTextFromJS:Z

.field private final mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMostRecentEventCount:I

.field private mNativeEventCount:I

.field private mOnKeyPress:Z

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private mReturnKeyType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStagedInputType:I

.field private mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

.field private mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    invoke-static {}, Landroid/text/method/QwertyKeyListener;->getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/textinput/ReactEditText;->sKeyListener:Landroid/text/method/KeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    .line 81
    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mOnKeyPress:Z

    .line 90
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setFocusableInTouchMode(Z)V

    .line 92
    new-instance v1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 93
    nop

    .line 94
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getGravity()I

    move-result v1

    const v2, 0x800007

    and-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityHorizontal:I

    .line 97
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    iput v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityVertical:I

    .line 98
    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    .line 99
    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    .line 100
    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    .line 101
    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mBlurOnSubmit:Ljava/lang/Boolean;

    .line 103
    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    .line 104
    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    .line 105
    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    .line 106
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    .line 107
    new-instance v0, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    invoke-direct {v0}, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    .line 108
    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

    .line 109
    new-instance v0, Lcom/facebook/react/views/text/TextAttributes;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextAttributes;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    .line 111
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/views/textinput/ReactEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 55
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 55
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 55
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->onContentSizeChange()V

    return-void
.end method

.method static synthetic access$400()Landroid/text/method/KeyListener;
    .locals 1

    .line 55
    sget-object v0, Lcom/facebook/react/views/textinput/ReactEditText;->sKeyListener:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method private getTextWatcherDelegator()Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/views/textinput/ReactEditText$1;)V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextWatcherDelegator:Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    return-object v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 448
    return-void
.end method

.method private isMultiline()Z
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSecureText()Z
    .locals 1

    .line 462
    nop

    .line 463
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x90

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0
.end method

.method private manageSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;

    .line 401
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 402
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "spanIdx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 404
    aget-object v2, v0, v1

    instance-of v2, v2, Lcom/facebook/react/views/text/ReactSpan;

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/16 v3, 0x21

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    .line 410
    goto :goto_1

    .line 412
    :cond_1
    aget-object v2, v0, v1

    .line 413
    .local v2, "span":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 414
    .local v3, "spanStart":I
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 415
    .local v4, "spanEnd":I
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 419
    .local v5, "spanFlags":I
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-interface {v6, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6, p1, v3, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->sameTextForSpan(Landroid/text/Editable;Landroid/text/SpannableStringBuilder;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 421
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 402
    .end local v2    # "span":Ljava/lang/Object;
    .end local v3    # "spanStart":I
    .end local v4    # "spanEnd":I
    .end local v5    # "spanFlags":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "spanIdx":I
    :cond_3
    return-void
.end method

.method private onContentSizeChange()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContentSizeWatcher:Lcom/facebook/react/views/textinput/ContentSizeWatcher;

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0}, Lcom/facebook/react/views/textinput/ContentSizeWatcher;->onLayout()V

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->setIntrinsicContentSize()V

    .line 475
    return-void
.end method

.method private static sameTextForSpan(Landroid/text/Editable;Landroid/text/SpannableStringBuilder;II)Z
    .locals 4
    .param p0, "oldText"    # Landroid/text/Editable;
    .param p1, "newText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 431
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-le p3, v0, :cond_0

    goto :goto_1

    .line 434
    :cond_0
    move v0, p2

    .local v0, "charIdx":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 435
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 436
    return v1

    .line 434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "charIdx":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_3
    :goto_1
    return v1
.end method

.method private setIntrinsicContentSize()V
    .locals 4

    .line 478
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 479
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 480
    .local v1, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    new-instance v2, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;

    invoke-direct {v2, p0}, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;-><init>(Landroid/widget/EditText;)V

    .line 481
    .local v2, "localData":Lcom/facebook/react/views/textinput/ReactTextInputLocalData;
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    .line 482
    return-void
.end method

.method private showSoftKeyboard()Z
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method private updateImeOptions()V
    .locals 4

    .line 502
    const/4 v0, 0x6

    .line 503
    .local v0, "returnKeyFlag":I
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReturnKeyType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 504
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "send"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "next"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "done"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v3, "go"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_5
    const-string v3, "search"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v3, "previous"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 524
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_1

    .line 521
    :pswitch_1
    const/4 v0, 0x4

    .line 522
    goto :goto_1

    .line 518
    :pswitch_2
    const/4 v0, 0x3

    .line 519
    goto :goto_1

    .line 515
    :pswitch_3
    const/4 v0, 0x7

    .line 516
    goto :goto_1

    .line 512
    :pswitch_4
    const/4 v0, 0x1

    .line 513
    goto :goto_1

    .line 509
    :pswitch_5
    const/4 v0, 0x5

    .line 510
    goto :goto_1

    .line 506
    :pswitch_6
    const/4 v0, 0x2

    .line 529
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    if-eqz v1, :cond_2

    .line 530
    const/high16 v1, 0x2000000

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setImeOptions(I)V

    goto :goto_2

    .line 532
    :cond_2
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setImeOptions(I)V

    .line 534
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bec4509 -> :sswitch_6
        -0x36059a58 -> :sswitch_5
        0xce8 -> :sswitch_4
        0x2f2382 -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x35cf88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 215
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    .line 217
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextWatcherDelegator()Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method protected applyTextAttributes()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextSize(IF)V

    .line 669
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveLetterSpacing()F

    move-result v0

    .line 671
    .local v0, "effectiveLetterSpacing":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setLetterSpacing(F)V

    .line 675
    .end local v0    # "effectiveLetterSpacing":F
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setFocusableInTouchMode(Z)V

    .line 193
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 194
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->hideSoftKeyboard()V

    .line 195
    return-void
.end method

.method clearFocusFromJS()V
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocus()V

    .line 354
    return-void
.end method

.method commitStagedInputType()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v0

    iget v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    if-eq v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionStart()I

    move-result v0

    .line 324
    .local v0, "selectionStart":I
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionEnd()I

    move-result v1

    .line 325
    .local v1, "selectionEnd":I
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    invoke-virtual {p0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setInputType(I)V

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelection(II)V

    .line 328
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    :cond_0
    return-void
.end method

.method public getBlurOnSubmit()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mBlurOnSubmit:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDisableFullscreenUI()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    return v0
.end method

.method public getReturnKeyType()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReturnKeyType:Ljava/lang/String;

    return-object v0
.end method

.method getStagedInputType()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    return v0
.end method

.method public incrementAndGetEventCounter()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 552
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 554
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 555
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 556
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->invalidate()V

    .line 555
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    return-void
.end method

.method public isLayoutRequested()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public maybeSetText(Lcom/facebook/react/views/text/ReactTextUpdate;)V
    .locals 4
    .param p1, "reactTextUpdate"    # Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 363
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isSecureText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJsEventCounter()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    .line 370
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    iget v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    if-ge v0, v1, :cond_1

    .line 371
    return-void

    .line 378
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 379
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 380
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->manageSpans(Landroid/text/SpannableStringBuilder;)V

    .line 381
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    .line 384
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 386
    iput-boolean v3, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    .line 387
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getBreakStrategy()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 389
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setBreakStrategy(I)V

    .line 392
    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 590
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 591
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 593
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 594
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 595
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onAttachedToWindow()V

    .line 594
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 177
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 178
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 179
    .local v1, "inputConnection":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mOnKeyPress:Z

    if-eqz v2, :cond_0

    .line 180
    new-instance v2, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;

    invoke-direct {v2, v1, v0, p0}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    move-object v1, v2

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getBlurOnSubmit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 187
    :cond_1
    return-object v1
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 566
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 567
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 569
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 570
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 571
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onDetachedFromWindow()V

    .line 570
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 5

    .line 602
    invoke-super {p0}, Landroid/widget/EditText;->onFinishTemporaryDetach()V

    .line 603
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 605
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 606
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 607
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onFinishTemporaryDetach()V

    .line 606
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 269
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/views/textinput/SelectionWatcher;->onSelectionChanged(II)V

    .line 272
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 159
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->hideSoftKeyboard()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 127
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->onContentSizeChange()V

    .line 128
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 170
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/react/views/textinput/ScrollWatcher;->onScrollChanged(IIII)V

    .line 173
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 259
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 260
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/views/textinput/SelectionWatcher;->onSelectionChanged(II)V

    .line 263
    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 5

    .line 578
    invoke-super {p0}, Landroid/widget/EditText;->onStartTemporaryDetach()V

    .line 579
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 581
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 582
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 583
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onStartTemporaryDetach()V

    .line 582
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    if-eqz v0, :cond_3

    .line 141
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->canScrollVertically(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 148
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    goto :goto_0

    .line 134
    :cond_2
    iput-boolean v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDetectScrollMovement:Z

    .line 137
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 138
    nop

    .line 152
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 225
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;

    .line 230
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextWatcherDelegator()Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 201
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 202
    return v1

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setFocusableInTouchMode(Z)V

    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 209
    .local v0, "focused":Z
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->showSoftKeyboard()Z

    .line 210
    return v0
.end method

.method public requestFocusFromJS()V
    .locals 1

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    .line 348
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->requestFocus()Z

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsJSSettingFocus:Z

    .line 350
    return-void
.end method

.method public setAllowFontScaling(Z)V
    .locals 1
    .param p1, "allowFontScaling"    # Z

    .line 643
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getAllowFontScaling()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setAllowFontScaling(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    .line 647
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 614
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    .line 615
    return-void
.end method

.method public setBlurOnSubmit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "blurOnSubmit"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mBlurOnSubmit:Ljava/lang/Boolean;

    .line 280
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # F
    .param p3, "alpha"    # F

    .line 622
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    .line 623
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 626
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    .line 627
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 630
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    .line 631
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 634
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 618
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    .line 619
    return-void
.end method

.method public setContentSizeWatcher(Lcom/facebook/react/views/textinput/ContentSizeWatcher;)V
    .locals 0
    .param p1, "contentSizeWatcher"    # Lcom/facebook/react/views/textinput/ContentSizeWatcher;

    .line 236
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContentSizeWatcher:Lcom/facebook/react/views/textinput/ContentSizeWatcher;

    .line 237
    return-void
.end method

.method public setDisableFullscreenUI(Z)V
    .locals 0
    .param p1, "disableFullscreenUI"    # Z

    .line 296
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableFullscreen:Z

    .line 297
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->updateImeOptions()V

    .line 298
    return-void
.end method

.method public setFontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F

    .line 650
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setFontSize(F)V

    .line 651
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    .line 652
    return-void
.end method

.method setGravityHorizontal(I)V
    .locals 2
    .param p1, "gravityHorizontal"    # I

    .line 485
    if-nez p1, :cond_0

    .line 486
    iget p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityHorizontal:I

    .line 488
    :cond_0
    nop

    .line 489
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    .line 488
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravity(I)V

    .line 491
    return-void
.end method

.method setGravityVertical(I)V
    .locals 1
    .param p1, "gravityVertical"    # I

    .line 494
    if-nez p1, :cond_0

    .line 495
    iget p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mDefaultGravityVertical:I

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravity(I)V

    .line 498
    return-void
.end method

.method public setInputType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 332
    invoke-super {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 333
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 334
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    .line 336
    invoke-super {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 341
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    invoke-virtual {v1, p1}, Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;->setInputType(I)V

    .line 342
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mKeyListener:Lcom/facebook/react/views/textinput/ReactEditText$InternalKeyListener;

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 343
    return-void
.end method

.method public setLetterSpacingPt(F)V
    .locals 1
    .param p1, "letterSpacingPt"    # F

    .line 638
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setLetterSpacing(F)V

    .line 639
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    .line 640
    return-void
.end method

.method public setMaxFontSizeMultiplier(F)V
    .locals 1
    .param p1, "maxFontSizeMultiplier"    # F

    .line 655
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getMaxFontSizeMultiplier()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setMaxFontSizeMultiplier(F)V

    .line 657
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->applyTextAttributes()V

    .line 659
    :cond_0
    return-void
.end method

.method public setMostRecentEventCount(I)V
    .locals 0
    .param p1, "mostRecentEventCount"    # I

    .line 240
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    .line 241
    return-void
.end method

.method public setOnKeyPress(Z)V
    .locals 0
    .param p1, "onKeyPress"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mOnKeyPress:Z

    .line 284
    return-void
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnKeyType"    # Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mReturnKeyType:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->updateImeOptions()V

    .line 307
    return-void
.end method

.method public setScrollWatcher(Lcom/facebook/react/views/textinput/ScrollWatcher;)V
    .locals 0
    .param p1, "scrollWatcher"    # Lcom/facebook/react/views/textinput/ScrollWatcher;

    .line 244
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mScrollWatcher:Lcom/facebook/react/views/textinput/ScrollWatcher;

    .line 245
    return-void
.end method

.method public setSelection(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 250
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mMostRecentEventCount:I

    iget v1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mNativeEventCount:I

    if-ge v0, v1, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 255
    return-void
.end method

.method public setSelectionWatcher(Lcom/facebook/react/views/textinput/SelectionWatcher;)V
    .locals 0
    .param p1, "selectionWatcher"    # Lcom/facebook/react/views/textinput/SelectionWatcher;

    .line 275
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mSelectionWatcher:Lcom/facebook/react/views/textinput/SelectionWatcher;

    .line 276
    return-void
.end method

.method setStagedInputType(I)V
    .locals 0
    .param p1, "stagedInputType"    # I

    .line 318
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mStagedInputType:I

    .line 319
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 538
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditText;->mContainsImages:Z

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 540
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 541
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 542
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 543
    const/4 v2, 0x1

    return v2

    .line 541
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
