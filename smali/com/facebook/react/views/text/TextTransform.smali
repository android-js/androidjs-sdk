.class public final enum Lcom/facebook/react/views/text/TextTransform;
.super Ljava/lang/Enum;
.source "TextTransform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/views/text/TextTransform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/views/text/TextTransform;

.field public static final enum CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum NONE:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum UNSET:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum UPPERCASE:Lcom/facebook/react/views/text/TextTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/facebook/react/views/text/TextTransform;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v0, Lcom/facebook/react/views/text/TextTransform;

    const/4 v2, 0x1

    const-string v3, "UPPERCASE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v0, Lcom/facebook/react/views/text/TextTransform;

    const/4 v3, 0x2

    const-string v4, "LOWERCASE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v0, Lcom/facebook/react/views/text/TextTransform;

    const/4 v4, 0x3

    const-string v5, "CAPITALIZE"

    invoke-direct {v0, v5, v4}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v0, Lcom/facebook/react/views/text/TextTransform;

    const/4 v5, 0x4

    const-string v6, "UNSET"

    invoke-direct {v0, v6, v5}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/react/views/text/TextTransform;

    sget-object v6, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    aput-object v6, v0, v1

    sget-object v1, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->$VALUES:[Lcom/facebook/react/views/text/TextTransform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textTransform"    # Lcom/facebook/react/views/text/TextTransform;

    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextTransform$1;->$SwitchMap$com$facebook$react$views$text$TextTransform:[I

    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextTransform;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 35
    move-object v0, p0

    .local v0, "transformed":Ljava/lang/String;
    goto :goto_0

    .line 32
    .end local v0    # "transformed":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/facebook/react/views/text/TextTransform;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .restart local v0    # "transformed":Ljava/lang/String;
    goto :goto_0

    .line 29
    .end local v0    # "transformed":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 30
    .restart local v0    # "transformed":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v0    # "transformed":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 27
    .restart local v0    # "transformed":Ljava/lang/String;
    nop

    .line 38
    :goto_0
    return-object v0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 43
    .local v0, "wordIterator":Ljava/text/BreakIterator;
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v1, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/text/BreakIterator;->first()I

    move-result v2

    .line 47
    .local v2, "start":I
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .local v3, "end":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 48
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "word":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_1
    move v2, v3

    .line 47
    .end local v4    # "word":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    .line 58
    .end local v3    # "end":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/views/text/TextTransform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/facebook/react/views/text/TextTransform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/text/TextTransform;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/views/text/TextTransform;
    .locals 1

    .line 15
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->$VALUES:[Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {v0}, [Lcom/facebook/react/views/text/TextTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextTransform;

    return-object v0
.end method
