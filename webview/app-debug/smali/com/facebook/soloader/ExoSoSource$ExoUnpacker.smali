.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExoUnpacker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;
    }
.end annotation


# instance fields
.field private final mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

.field final synthetic this$0:Lcom/facebook/soloader/ExoSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .locals 20
    .param p2, "soSource"    # Lcom/facebook/soloader/UnpackingSoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->this$0:Lcom/facebook/soloader/ExoSoSource;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 52
    iget-object v2, v0, Lcom/facebook/soloader/ExoSoSource;->mContext:Landroid/content/Context;

    .line 53
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/local/tmp/exopackage/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/native-libs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 58
    .local v3, "exoDir":Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 60
    .local v4, "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v5, v0

    .line 62
    .local v5, "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_a

    aget-object v9, v0, v8

    .line 63
    .local v9, "abi":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v10, "abiDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_0

    .line 65
    move-object/from16 v16, v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move/from16 v18, v6

    goto/16 :goto_4

    .line 68
    :cond_0
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v11, Ljava/io/File;

    const-string v12, "metadata.txt"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v11, "metadataFileName":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_1

    .line 72
    move-object/from16 v16, v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move/from16 v18, v6

    goto/16 :goto_4

    .line 75
    :cond_1
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 76
    .local v12, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 75
    .local v14, "br":Ljava/io/BufferedReader;
    nop

    .line 78
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v15

    .local p1, "line":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    .line 80
    goto :goto_1

    .line 83
    :cond_2
    const/16 v15, 0x20

    move-object/from16 v13, p1

    .end local p1    # "line":Ljava/lang/String;
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 84
    .local v15, "sep":I
    const/4 v7, -0x1

    if-eq v15, v7, :cond_6

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v0

    move-object/from16 p1, v2

    const/4 v0, 0x0

    .end local v2    # "context":Landroid/content/Context;
    .local p1, "context":Landroid/content/Context;
    :try_start_2
    invoke-virtual {v13, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "soName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 90
    .local v7, "nrAlreadyProvided":I
    const/16 v17, 0x0

    .line 91
    .local v17, "found":Z
    const/16 v18, 0x0

    move/from16 v0, v18

    .local v0, "i":I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 92
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v3

    .end local v3    # "exoDir":Ljava/io/File;
    .local v19, "exoDir":Ljava/io/File;
    :try_start_3
    move-object/from16 v3, v18

    check-cast v3, Lcom/facebook/soloader/ExoSoSource$FileDso;

    iget-object v3, v3, Lcom/facebook/soloader/ExoSoSource$FileDso;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const/16 v17, 0x1

    .line 94
    goto :goto_3

    .line 91
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v19

    goto :goto_2

    .end local v19    # "exoDir":Ljava/io/File;
    .restart local v3    # "exoDir":Ljava/io/File;
    :cond_4
    move-object/from16 v19, v3

    .line 98
    .end local v0    # "i":I
    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    :goto_3
    if-eqz v17, :cond_5

    .line 99
    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move-object/from16 v3, v19

    goto :goto_1

    .line 102
    :cond_5
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "backingFileBaseName":Ljava/lang/String;
    new-instance v3, Lcom/facebook/soloader/ExoSoSource$FileDso;

    move/from16 v18, v6

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v2, v0, v6}, Lcom/facebook/soloader/ExoSoSource$FileDso;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move/from16 v6, v18

    move-object/from16 v3, v19

    .end local v0    # "backingFileBaseName":Ljava/lang/String;
    .end local v2    # "soName":Ljava/lang/String;
    .end local v7    # "nrAlreadyProvided":I
    .end local v15    # "sep":I
    .end local v17    # "found":Z
    goto/16 :goto_1

    .line 109
    .end local v13    # "line":Ljava/lang/String;
    .end local v19    # "exoDir":Ljava/io/File;
    .restart local v3    # "exoDir":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    const/4 v13, 0x0

    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    goto/16 :goto_6

    .line 75
    .end local v19    # "exoDir":Ljava/io/File;
    .restart local v3    # "exoDir":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    move-object v13, v0

    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    goto :goto_5

    .line 85
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "sep":I
    :cond_6
    move-object/from16 p1, v2

    move-object/from16 v19, v3

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal line in exopackage metadata: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .end local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "abiDir":Ljava/io/File;
    .end local v11    # "metadataFileName":Ljava/io/File;
    .end local v12    # "fr":Ljava/io/FileReader;
    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "sep":I
    .restart local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .restart local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "abi":Ljava/lang/String;
    .restart local v10    # "abiDir":Ljava/io/File;
    .restart local v11    # "metadataFileName":Ljava/io/File;
    .restart local v12    # "fr":Ljava/io/FileReader;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v13, 0x0

    goto :goto_6

    .line 75
    :catch_1
    move-exception v0

    move-object v13, v0

    goto :goto_5

    .line 78
    .end local v19    # "exoDir":Ljava/io/File;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    .local p1, "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v13, p1

    move-object/from16 v16, v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move/from16 v18, v6

    .line 109
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    .local p1, "context":Landroid/content/Context;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v14    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    .line 62
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "abiDir":Ljava/io/File;
    .end local v11    # "metadataFileName":Ljava/io/File;
    .end local v12    # "fr":Ljava/io/FileReader;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move/from16 v6, v18

    move-object/from16 v3, v19

    goto/16 :goto_0

    .line 109
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    .restart local v9    # "abi":Ljava/lang/String;
    .restart local v10    # "abiDir":Ljava/io/File;
    .restart local v11    # "metadataFileName":Ljava/io/File;
    .restart local v12    # "fr":Ljava/io/FileReader;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move-object v2, v0

    const/4 v13, 0x0

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_6

    .line 75
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move-object v13, v0

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .end local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .end local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "abiDir":Ljava/io/File;
    .end local v11    # "metadataFileName":Ljava/io/File;
    .end local v12    # "fr":Ljava/io/FileReader;
    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :goto_5
    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 109
    .restart local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .restart local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "abi":Ljava/lang/String;
    .restart local v10    # "abiDir":Ljava/io/File;
    .restart local v11    # "metadataFileName":Ljava/io/File;
    .restart local v12    # "fr":Ljava/io/FileReader;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_3
    move-exception v0

    move-object v2, v0

    :goto_6
    if-eqz v13, :cond_8

    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v13, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .end local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .end local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "abiDir":Ljava/io/File;
    .end local v11    # "metadataFileName":Ljava/io/File;
    .end local v12    # "fr":Ljava/io/FileReader;
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :goto_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .end local v14    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .restart local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "abi":Ljava/lang/String;
    .restart local v10    # "abiDir":Ljava/io/File;
    .restart local v11    # "metadataFileName":Ljava/io/File;
    .restart local v12    # "fr":Ljava/io/FileReader;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v13, 0x0

    goto :goto_9

    .line 75
    :catch_4
    move-exception v0

    move-object v13, v0

    goto :goto_8

    .line 109
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move-object v2, v0

    const/4 v13, 0x0

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_9

    .line 75
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move-object v13, v0

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .end local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .end local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "abiDir":Ljava/io/File;
    .end local v11    # "metadataFileName":Ljava/io/File;
    .end local v12    # "fr":Ljava/io/FileReader;
    .end local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :goto_8
    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 109
    .restart local v4    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .restart local v5    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "abi":Ljava/lang/String;
    .restart local v10    # "abiDir":Ljava/io/File;
    .restart local v11    # "metadataFileName":Ljava/io/File;
    .restart local v12    # "fr":Ljava/io/FileReader;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_6
    move-exception v0

    move-object v2, v0

    :goto_9
    if-eqz v13, :cond_9

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v3, v0

    invoke-virtual {v13, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_9
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    :goto_a
    throw v2

    .line 112
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "abiDir":Ljava/io/File;
    .end local v11    # "metadataFileName":Ljava/io/File;
    .end local v12    # "fr":Ljava/io/FileReader;
    .end local v19    # "exoDir":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "exoDir":Ljava/io/File;
    :cond_a
    move-object/from16 p1, v2

    move-object/from16 v19, v3

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "exoDir":Ljava/io/File;
    .restart local v19    # "exoDir":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)[Lcom/facebook/soloader/ExoSoSource$FileDso;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    .line 47
    iget-object v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-object v0
.end method


# virtual methods
.method protected getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object v0
.end method

.method protected openDsoIterator()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;-><init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;Lcom/facebook/soloader/ExoSoSource$1;)V

    return-object v0
.end method
