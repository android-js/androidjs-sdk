.class public Lcom/facebook/yoga/YogaValue;
.super Ljava/lang/Object;
.source "YogaValue.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field static final AUTO:Lcom/facebook/yoga/YogaValue;

.field static final UNDEFINED:Lcom/facebook/yoga/YogaValue;

.field static final ZERO:Lcom/facebook/yoga/YogaValue;


# instance fields
.field public final unit:Lcom/facebook/yoga/YogaUnit;

.field public final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v1}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    sput-object v0, Lcom/facebook/yoga/YogaValue;->UNDEFINED:Lcom/facebook/yoga/YogaValue;

    .line 15
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    sput-object v0, Lcom/facebook/yoga/YogaValue;->ZERO:Lcom/facebook/yoga/YogaValue;

    .line 16
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    invoke-direct {v0, v2, v1}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    sput-object v0, Lcom/facebook/yoga/YogaValue;->AUTO:Lcom/facebook/yoga/YogaValue;

    return-void
.end method

.method constructor <init>(FI)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "unit"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 28
    invoke-static {p2}, Lcom/facebook/yoga/YogaUnit;->fromInt(I)Lcom/facebook/yoga/YogaUnit;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FLcom/facebook/yoga/YogaUnit;)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "unit"    # Lcom/facebook/yoga/YogaUnit;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/facebook/yoga/YogaValue;->value:F

    .line 23
    iput-object p2, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    .line 24
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/facebook/yoga/YogaValue;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "undefined"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/facebook/yoga/YogaValue;->UNDEFINED:Lcom/facebook/yoga/YogaValue;

    return-object v0

    .line 74
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Lcom/facebook/yoga/YogaValue;->AUTO:Lcom/facebook/yoga/YogaValue;

    return-object v0

    .line 78
    :cond_2
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget-object v2, Lcom/facebook/yoga/YogaUnit;->PERCENT:Lcom/facebook/yoga/YogaUnit;

    invoke-direct {v0, v1, v2}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    return-object v0

    .line 82
    :cond_3
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget-object v2, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    invoke-direct {v0, v1, v2}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p1, Lcom/facebook/yoga/YogaValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    .line 35
    .local v0, "otherValue":Lcom/facebook/yoga/YogaValue;
    iget-object v2, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    iget-object v3, v0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    if-ne v2, v3, :cond_2

    .line 36
    sget-object v3, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    sget-object v3, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/facebook/yoga/YogaValue;->value:F

    iget v3, v0, Lcom/facebook/yoga/YogaValue;->value:F

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1

    .line 41
    .end local v0    # "otherValue":Lcom/facebook/yoga/YogaValue;
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 46
    iget v0, p0, Lcom/facebook/yoga/YogaValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    sget-object v0, Lcom/facebook/yoga/YogaValue$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 59
    const-string v0, "auto"

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/facebook/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_2
    iget v0, p0, Lcom/facebook/yoga/YogaValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_3
    const-string v0, "undefined"

    return-object v0
.end method
