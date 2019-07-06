.class public Lcom/facebook/react/common/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# static fields
.field private static final INNER_ARRAY_GROWTH_FACTOR:D = 1.8


# instance fields
.field private mArray:[J

.field private mLength:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    .line 27
    return-void
.end method

.method public static createWithInitialCapacity(I)Lcom/facebook/react/common/LongArray;
    .locals 1
    .param p0, "initialCapacity"    # I

    .line 21
    new-instance v0, Lcom/facebook/react/common/LongArray;

    invoke-direct {v0, p0}, Lcom/facebook/react/common/LongArray;-><init>(I)V

    return-object v0
.end method

.method private growArrayIfNeeded()V
    .locals 6

    .line 68
    iget v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    iget-object v1, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 70
    add-int/lit8 v1, v0, 0x1

    int-to-double v2, v0

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    .local v0, "newSize":I
    new-array v1, v0, [J

    .line 72
    .local v1, "newArray":[J
    iget-object v2, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    iget v3, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v1, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    .line 75
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[J
    :cond_0
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    .line 30
    invoke-direct {p0}, Lcom/facebook/react/common/LongArray;->growArrayIfNeeded()V

    .line 31
    iget-object v0, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    iget v1, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    aput-wide p1, v0, v1

    .line 32
    return-void
.end method

.method public dropTail(I)V
    .locals 3
    .param p1, "n"    # I

    .line 60
    iget v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    if-gt p1, v0, :cond_0

    .line 64
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to drop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items from array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)J
    .locals 3
    .param p1, "index"    # I

    .line 35
    iget v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    if-ge p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 53
    iget v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 42
    iget v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    if-ge p1, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/facebook/react/common/LongArray;->mArray:[J

    aput-wide p2, v0, p1

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/facebook/react/common/LongArray;->mLength:I

    return v0
.end method
