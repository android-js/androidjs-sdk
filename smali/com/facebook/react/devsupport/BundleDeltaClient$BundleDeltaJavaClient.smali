.class Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;
.super Lcom/facebook/react/devsupport/BundleDeltaClient;
.source "BundleDeltaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/BundleDeltaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BundleDeltaJavaClient"
.end annotation


# instance fields
.field final mModules:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Number;",
            "[B>;"
        }
    .end annotation
.end field

.field mPostCode:[B

.field mPreCode:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/facebook/react/devsupport/BundleDeltaClient;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/devsupport/BundleDeltaClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/devsupport/BundleDeltaClient$1;

    .line 74
    invoke-direct {p0}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;-><init>()V

    return-void
.end method

.method private static removeModules(Landroid/util/JsonReader;Ljava/util/LinkedHashMap;)I
    .locals 3
    .param p0, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Number;",
            "[B>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Number;[B>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "numModules":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 178
    .local v1, "moduleId":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    nop

    .end local v1    # "moduleId":I
    add-int/lit8 v0, v0, 0x1

    .line 181
    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 185
    return v0
.end method

.method private static setModules(Landroid/util/JsonReader;Ljava/util/LinkedHashMap;)I
    .locals 4
    .param p0, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Number;",
            "[B>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Number;[B>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "numModules":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 157
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 159
    .local v1, "moduleId":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 162
    nop

    .end local v1    # "moduleId":I
    add-int/lit8 v0, v0, 0x1

    .line 163
    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 167
    return v0
.end method


# virtual methods
.method public canHandle(Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;)Z
    .locals 1
    .param p1, "type"    # Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 82
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->DEV_SUPPORT:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized processDelta(Lokio/BufferedSource;Ljava/io/File;)Landroid/util/Pair;
    .locals 7
    .param p1, "body"    # Lokio/BufferedSource;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/facebook/react/bridge/NativeDeltaClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v0, "jsonReader":Landroid/util/JsonReader;
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "numChangedModules":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "name":Ljava/lang/String;
    const-string v3, "pre"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mPreCode:[B

    goto :goto_1

    .line 104
    .end local p0    # "this":Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;
    :cond_0
    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mPostCode:[B

    goto :goto_1

    .line 106
    :cond_1
    const-string v3, "modules"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    invoke-static {v0, v3}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->setModules(Landroid/util/JsonReader;Ljava/util/LinkedHashMap;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 108
    :cond_2
    const-string v3, "added"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    invoke-static {v0, v3}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->setModules(Landroid/util/JsonReader;Ljava/util/LinkedHashMap;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 110
    :cond_3
    const-string v3, "modified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    iget-object v3, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    invoke-static {v0, v3}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->setModules(Landroid/util/JsonReader;Ljava/util/LinkedHashMap;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 112
    :cond_4
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    iget-object v3, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    invoke-static {v0, v3}, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->removeModules(Landroid/util/JsonReader;Ljava/util/LinkedHashMap;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 117
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 119
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 120
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 122
    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 125
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v2

    .line 128
    :cond_7
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v4, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mPreCode:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 132
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 134
    iget-object v5, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 135
    .local v6, "code":[B
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 136
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 137
    .end local v6    # "code":[B
    goto :goto_2

    .line 139
    :cond_8
    iget-object v5, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mPostCode:[B

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 140
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 143
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 144
    nop

    .line 146
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v2

    .line 142
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 143
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 144
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    .end local v0    # "jsonReader":Landroid/util/JsonReader;
    .end local v1    # "numChangedModules":I
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p1    # "body":Lokio/BufferedSource;
    .end local p2    # "outputFile":Ljava/io/File;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-super {p0}, Lcom/facebook/react/devsupport/BundleDeltaClient;->reset()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mPreCode:[B

    .line 88
    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mPostCode:[B

    .line 89
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;->mModules:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lcom/facebook/react/devsupport/BundleDeltaClient$BundleDeltaJavaClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
