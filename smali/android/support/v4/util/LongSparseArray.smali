.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 58
    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez p1, :cond_0

    .line 70
    sget-object p1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object p1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 71
    sget-object p1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result p1

    .line 74
    new-array v1, p1, [J

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 75
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 77
    :goto_0
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return-void
.end method

.method private gc()V
    .locals 9

    .line 158
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 160
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 161
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 164
    aget-object v6, v2, v4

    .line 166
    sget-object v7, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 168
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 169
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 170
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 178
    iput v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 369
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    .line 374
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 375
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 378
    :cond_1
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 379
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 380
    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 382
    new-array v2, v1, [J

    .line 383
    new-array v1, v1, [Ljava/lang/Object;

    .line 386
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 390
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 393
    :cond_2
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 394
    iget-object p1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 395
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 5

    .line 353
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 354
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 357
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iput v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 361
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 86
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 87
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .locals 0

    .line 341
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Landroid/support/v4/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public delete(J)V
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 131
    iget-object p2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 132
    aput-object v1, p2, p1

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_1

    .line 117
    iget-object p2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, p2, p1

    sget-object p2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public indexOfKey(J)I
    .locals 2

    .line 312
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 333
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)J
    .locals 3

    .line 272
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public put(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 192
    iget-object p1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    goto :goto_0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 196
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 197
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 198
    aput-object p3, v2, v0

    return-void

    .line 202
    :cond_1
    iget-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 203
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 206
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 209
    :cond_2
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 210
    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 212
    new-array v2, v1, [J

    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    .line 216
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 220
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 223
    :cond_3
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 225
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_4
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 230
    iget-object p1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 231
    iget p1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    :goto_0
    return-void
.end method

.method public putAll(Landroid/support/v4/util/LongSparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LongSparseArray<",
            "+TE;>;)V"
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 242
    invoke-virtual {p1, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(J)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    return-void
.end method

.method public removeAt(I)V
    .locals 3

    .line 149
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 150
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    .line 251
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 255
    :cond_0
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 407
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 413
    :goto_0
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 418
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 286
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
