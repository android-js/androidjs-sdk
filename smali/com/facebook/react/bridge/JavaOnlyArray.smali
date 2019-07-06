.class public Lcom/facebook/react/bridge/JavaOnlyArray;
.super Ljava/lang/Object;
.source "JavaOnlyArray.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReadableArray;
.implements Lcom/facebook/react/bridge/WritableArray;


# instance fields
.field private final mBackingList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    .line 74
    return-void
.end method

.method private varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    .line 70
    return-void
.end method

.method public static deepClone(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/JavaOnlyArray;
    .locals 6
    .param p0, "ary"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 41
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 42
    .local v0, "res":Lcom/facebook/react/bridge/JavaOnlyArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    .line 44
    .local v3, "type":Lcom/facebook/react/bridge/ReadableType;
    sget-object v4, Lcom/facebook/react/bridge/JavaOnlyArray$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 61
    :pswitch_0
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->deepClone(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_1

    .line 58
    :pswitch_1
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->deepClone(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 59
    goto :goto_1

    .line 55
    :pswitch_2
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushString(Ljava/lang/String;)V

    .line 56
    goto :goto_1

    .line 52
    :pswitch_3
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    .line 53
    goto :goto_1

    .line 49
    :pswitch_4
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushBoolean(Z)V

    .line 50
    goto :goto_1

    .line 46
    :pswitch_5
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushNull()V

    .line 47
    nop

    .line 42
    .end local v3    # "type":Lcom/facebook/react/bridge/ReadableType;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static from(Ljava/util/List;)Lcom/facebook/react/bridge/JavaOnlyArray;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 33
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 195
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/facebook/react/bridge/JavaOnlyArray;

    .line 199
    .local v2, "that":Lcom/facebook/react/bridge/JavaOnlyArray;
    iget-object v3, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 200
    :goto_0
    return v1

    .line 202
    :cond_3
    return v0

    .line 195
    .end local v2    # "that":Lcom/facebook/react/bridge/JavaOnlyArray;
    :cond_4
    :goto_1
    return v1
.end method

.method public getArray(I)Lcom/facebook/react/bridge/JavaOnlyArray;
    .locals 1
    .param p1, "index"    # I

    .line 107
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    return-object v0
.end method

.method public bridge synthetic getArray(I)Lcom/facebook/react/bridge/ReadableArray;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->getArray(I)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 112
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDynamic(I)Lcom/facebook/react/bridge/Dynamic;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 122
    invoke-static {p0, p1}, Lcom/facebook/react/bridge/DynamicFromArray;->create(Lcom/facebook/react/bridge/ReadableArray;I)Lcom/facebook/react/bridge/DynamicFromArray;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 97
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMap(I)Lcom/facebook/react/bridge/JavaOnlyMap;
    .locals 1
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaOnlyMap;

    return-object v0
.end method

.method public bridge synthetic getMap(I)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->getMap(I)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)Lcom/facebook/react/bridge/ReadableType;
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 130
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Null:Lcom/facebook/react/bridge/ReadableType;

    return-object v1

    .line 131
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 132
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    return-object v1

    .line 133
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 138
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    return-object v1

    .line 139
    :cond_3
    instance-of v1, v0, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v1, :cond_4

    .line 140
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    return-object v1

    .line 141
    :cond_4
    instance-of v1, v0, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v1, :cond_5

    .line 142
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    return-object v1

    .line 144
    :cond_5
    const/4 v1, 0x0

    return-object v1

    .line 136
    :cond_6
    :goto_0
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 87
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pushArray(Lcom/facebook/react/bridge/WritableArray;)V
    .locals 1
    .param p1, "array"    # Lcom/facebook/react/bridge/WritableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public pushBoolean(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 149
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public pushDouble(D)V
    .locals 2
    .param p1, "value"    # D

    .line 154
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public pushInt(I)V
    .locals 2
    .param p1, "value"    # I

    .line 159
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public pushMap(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "map"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public pushNull()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public pushString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public size()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaOnlyArray;->mBackingList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
