.class public final enum Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
.super Ljava/lang/Enum;
.source "AccessibilityDelegateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/AccessibilityDelegateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessibilityRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum ADJUSTABLE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum BUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum HEADER:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum IMAGE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum KEYBOARDKEY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum LINK:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum NONE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum SEARCH:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum SUMMARY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum TEXT:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->NONE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 36
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v2, 0x1

    const-string v3, "BUTTON"

    invoke-direct {v0, v3, v2}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 37
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v3, 0x2

    const-string v4, "LINK"

    invoke-direct {v0, v4, v3}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 38
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v4, 0x3

    const-string v5, "SEARCH"

    invoke-direct {v0, v5, v4}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SEARCH:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 39
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v5, 0x4

    const-string v6, "IMAGE"

    invoke-direct {v0, v6, v5}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 40
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v6, 0x5

    const-string v7, "IMAGEBUTTON"

    invoke-direct {v0, v7, v6}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 41
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v7, 0x6

    const-string v8, "KEYBOARDKEY"

    invoke-direct {v0, v8, v7}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->KEYBOARDKEY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 42
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/4 v8, 0x7

    const-string v9, "TEXT"

    invoke-direct {v0, v9, v8}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->TEXT:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 43
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/16 v9, 0x8

    const-string v10, "ADJUSTABLE"

    invoke-direct {v0, v10, v9}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->ADJUSTABLE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 44
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/16 v10, 0x9

    const-string v11, "SUMMARY"

    invoke-direct {v0, v11, v10}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SUMMARY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 45
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/16 v11, 0xa

    const-string v12, "HEADER"

    invoke-direct {v0, v12, v11}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->HEADER:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const/16 v0, 0xb

    .line 34
    new-array v0, v0, [Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    sget-object v12, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->NONE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v12, v0, v1

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SEARCH:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->KEYBOARDKEY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->TEXT:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->ADJUSTABLE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SUMMARY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->HEADER:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v1, v0, v11

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->$VALUES:[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-static {}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->values()[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility role value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public static getValue(Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;)Ljava/lang/String;
    .locals 3

    .line 48
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$2;->$SwitchMap$com$facebook$react$uimanager$AccessibilityDelegateUtil$AccessibilityRole:[I

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "android.widget.ImageView"

    const-string v2, "android.widget.ViewGroup"

    packed-switch v0, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility role value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-object v2

    :pswitch_1
    const-string p0, "android.widget.SeekBar"

    return-object p0

    :pswitch_2
    return-object v2

    :pswitch_3
    const-string p0, "android.inputmethodservice.Keyboard$Key"

    return-object p0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string p0, "android.widget.EditText"

    return-object p0

    :pswitch_6
    return-object v2

    :pswitch_7
    const-string p0, "android.widget.Button"

    return-object p0

    :pswitch_8
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    .locals 1

    .line 34
    const-class v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->$VALUES:[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {v0}, [Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    return-object v0
.end method
