.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$Api14Utils;,
        Lcom/facebook/soloader/SoLoader$WrongAbiError;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final SOLOADER_ALLOW_ASYNC_INIT:I = 0x2

.field public static final SOLOADER_DISABLE_BACKUP_SOSOURCE:I = 0x8

.field public static final SOLOADER_ENABLE_EXOPACKAGE:I = 0x1

.field public static final SOLOADER_LOOK_IN_ZIP:I = 0x4

.field private static final SO_STORE_NAME_MAIN:Ljava/lang/String; = "lib-main"

.field private static final SO_STORE_NAME_SPLIT:Ljava/lang/String; = "lib-"

.field static final SYSTRACE_LIBRARY_LOADING:Z

.field static final TAG:Ljava/lang/String; = "SoLoader"

.field private static sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sSoSourcesLock"
    .end annotation
.end field

.field private static sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sSoSourcesLock"
    .end annotation
.end field

.field private static sFlags:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sSoSourcesLock"
    .end annotation
.end field

.field private static final sLoadedAndMergedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "SoLoader.class"
    .end annotation
.end field

.field private static final sLoadingLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "SoLoader.class"
    .end annotation
.end field

.field static sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sSoSources:[Lcom/facebook/soloader/SoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sSoSourcesLock"
    .end annotation
.end field

.field private static final sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static sSoSourcesVersion:I

.field private static sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 92
    const/4 v1, 0x0

    sput v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 109
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    .line 118
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 119
    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    .line 122
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "shouldSystrace":Z
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 160
    :goto_0
    sput-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    .line 161
    .end local v0    # "shouldSystrace":Z
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSoSourcesAbisSupported()Z
    .locals 9

    .line 840
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 842
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 843
    nop

    .line 863
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 843
    return v1

    .line 846
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "supportedAbis":[Ljava/lang/String;
    move v2, v1

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 848
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/facebook/soloader/SoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, "soSourceAbis":[Ljava/lang/String;
    move v4, v1

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 850
    const/4 v5, 0x0

    .line 851
    .local v5, "soSourceSupported":Z
    move v6, v1

    .local v6, "k":I
    :goto_2
    array-length v7, v0

    if-ge v6, v7, :cond_1

    if-nez v5, :cond_1

    .line 852
    aget-object v7, v3, v4

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    .line 851
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 854
    .end local v6    # "k":I
    :cond_1
    if-nez v5, :cond_2

    .line 855
    const-string v6, "SoLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "abi not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    nop

    .line 863
    sget-object v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 856
    return v1

    .line 849
    .end local v5    # "soSourceSupported":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 847
    .end local v3    # "soSourceAbis":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    .end local v2    # "i":I
    :cond_4
    nop

    .line 863
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 861
    const/4 v1, 0x1

    return v1

    .line 863
    .end local v0    # "supportedAbis":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 864
    throw v0

    return-void
.end method

.method private static assertInitialized()V
    .locals 2

    .line 778
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 780
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 784
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 785
    nop

    .line 786
    return-void

    .line 781
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 785
    throw v0
.end method

.method public static deinitForTest()V
    .locals 1

    .line 439
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    .line 440
    return-void
.end method

.method private static doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 19
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "loadFlags"    # I
    .param p2, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " caused by: "

    const/4 v4, 0x0

    .line 649
    .local v4, "result":I
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 651
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v5, "couldn\'t find DSO to load: "

    const-string v6, "SoLoader"

    if-eqz v0, :cond_1a

    .line 656
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 657
    nop

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "restoreOldPolicy":Z
    if-nez p2, :cond_0

    .line 663
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 664
    .end local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .local v7, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    .line 662
    .end local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    move-object/from16 v7, p2

    move v8, v0

    .line 667
    .end local v0    # "restoreOldPolicy":Z
    .end local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .local v8, "restoreOldPolicy":Z
    :goto_0
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_1

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SoLoader.loadLibrary["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;)V

    .line 671
    :cond_1
    const/4 v9, 0x0

    .line 675
    .local v9, "error":Ljava/lang/Throwable;
    :cond_2
    const/4 v10, 0x0

    .line 676
    .local v10, "retry":Z
    const/4 v11, 0x3

    :try_start_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 677
    sget v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v12, v0

    .line 679
    .local v12, "currentSoSourcesVersion":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-nez v4, :cond_6

    :try_start_2
    sget-object v14, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v14, v14

    if-ge v0, v14, :cond_6

    .line 680
    sget-object v14, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v14, v14, v0

    .line 681
    .local v14, "currentSource":Lcom/facebook/soloader/SoSource;
    invoke-virtual {v14, v1, v2, v7}, Lcom/facebook/soloader/SoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v4, v15

    .line 682
    if-ne v4, v11, :cond_5

    :try_start_3
    sget-object v15, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    if-eqz v15, :cond_5

    .line 684
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying backup SoSource for "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v11, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    array-length v15, v11

    const/16 v16, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_4

    aget-object v16, v11, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v16

    .line 686
    .local v17, "backupSoSource":Lcom/facebook/soloader/UnpackingSoSource;
    move/from16 v16, v4

    move-object/from16 v4, v17

    .end local v17    # "backupSoSource":Lcom/facebook/soloader/UnpackingSoSource;
    .local v4, "backupSoSource":Lcom/facebook/soloader/UnpackingSoSource;
    .local v16, "result":I
    :try_start_4
    invoke-virtual {v4, v1}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v4, v1, v2, v7}, Lcom/facebook/soloader/UnpackingSoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v18, v17

    .line 688
    .local v18, "resultFromBackup":I
    move-object/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v10

    const/4 v10, 0x1

    .end local v10    # "retry":Z
    .local v4, "resultFromBackup":I
    .restart local v17    # "backupSoSource":Lcom/facebook/soloader/UnpackingSoSource;
    .local v18, "retry":Z
    if-ne v4, v10, :cond_3

    .line 689
    move v10, v4

    .line 690
    .end local v16    # "result":I
    .local v10, "result":I
    move/from16 v16, v10

    goto :goto_3

    .line 685
    .end local v4    # "resultFromBackup":I
    .end local v10    # "result":I
    .end local v17    # "backupSoSource":Lcom/facebook/soloader/UnpackingSoSource;
    .restart local v16    # "result":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    move/from16 v10, v18

    goto :goto_2

    .line 697
    .end local v0    # "i":I
    .end local v14    # "currentSource":Lcom/facebook/soloader/SoSource;
    .end local v18    # "retry":Z
    .local v10, "retry":Z
    :catchall_0
    move-exception v0

    move/from16 v18, v10

    move/from16 v4, v16

    .end local v10    # "retry":Z
    .restart local v18    # "retry":Z
    goto :goto_4

    .line 685
    .end local v16    # "result":I
    .end local v18    # "retry":Z
    .restart local v0    # "i":I
    .local v4, "result":I
    .restart local v10    # "retry":Z
    .restart local v14    # "currentSource":Lcom/facebook/soloader/SoSource;
    :cond_4
    move/from16 v16, v4

    move/from16 v18, v10

    .line 693
    .end local v4    # "result":I
    .end local v10    # "retry":Z
    .restart local v16    # "result":I
    .restart local v18    # "retry":Z
    :goto_3
    move/from16 v4, v16

    goto :goto_5

    .line 697
    .end local v0    # "i":I
    .end local v14    # "currentSource":Lcom/facebook/soloader/SoSource;
    .end local v16    # "result":I
    .end local v18    # "retry":Z
    .restart local v4    # "result":I
    .restart local v10    # "retry":Z
    :catchall_1
    move-exception v0

    move/from16 v16, v4

    move/from16 v18, v10

    .end local v4    # "result":I
    .end local v10    # "retry":Z
    .restart local v16    # "result":I
    .restart local v18    # "retry":Z
    goto :goto_4

    .line 682
    .end local v16    # "result":I
    .end local v18    # "retry":Z
    .restart local v0    # "i":I
    .restart local v4    # "result":I
    .restart local v10    # "retry":Z
    .restart local v14    # "currentSource":Lcom/facebook/soloader/SoSource;
    :cond_5
    move/from16 v16, v4

    move/from16 v18, v10

    .line 679
    .end local v4    # "result":I
    .end local v10    # "retry":Z
    .end local v14    # "currentSource":Lcom/facebook/soloader/SoSource;
    .restart local v16    # "result":I
    .restart local v18    # "retry":Z
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v16

    move/from16 v10, v18

    const/4 v11, 0x3

    goto :goto_1

    .line 697
    .end local v0    # "i":I
    .end local v16    # "result":I
    .end local v18    # "retry":Z
    .restart local v4    # "result":I
    .restart local v10    # "retry":Z
    :catchall_2
    move-exception v0

    move/from16 v18, v10

    .end local v10    # "retry":Z
    .restart local v18    # "retry":Z
    :goto_4
    :try_start_5
    sget-object v10, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 698
    nop

    .end local v4    # "result":I
    .end local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "restoreOldPolicy":Z
    .end local v9    # "error":Ljava/lang/Throwable;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "loadFlags":I
    throw v0

    .line 679
    .end local v18    # "retry":Z
    .restart local v0    # "i":I
    .restart local v4    # "result":I
    .restart local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v8    # "restoreOldPolicy":Z
    .restart local v9    # "error":Ljava/lang/Throwable;
    .restart local v10    # "retry":Z
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "loadFlags":I
    :cond_6
    move/from16 v18, v10

    .line 697
    .end local v0    # "i":I
    .end local v10    # "retry":Z
    .restart local v18    # "retry":Z
    :goto_5
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 698
    nop

    .line 699
    and-int/lit8 v0, v2, 0x2

    const/4 v10, 0x2

    if-ne v0, v10, :cond_9

    if-nez v4, :cond_9

    .line 702
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 705
    :try_start_6
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v0}, Lcom/facebook/soloader/ApplicationSoSource;->checkAndMaybeUpdate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 706
    sget v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    const/4 v10, 0x1

    add-int/2addr v0, v10

    sput v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 708
    :cond_7
    sget v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eq v0, v12, :cond_8

    .line 710
    const/4 v0, 0x1

    move v10, v0

    .end local v18    # "retry":Z
    .local v0, "retry":Z
    goto :goto_6

    .line 708
    .end local v0    # "retry":Z
    .restart local v18    # "retry":Z
    :cond_8
    move/from16 v10, v18

    .line 713
    .end local v18    # "retry":Z
    .restart local v10    # "retry":Z
    :goto_6
    :try_start_7
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 714
    move/from16 v18, v10

    goto :goto_7

    .line 713
    .end local v10    # "retry":Z
    .restart local v18    # "retry":Z
    :catchall_3
    move-exception v0

    sget-object v10, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 714
    nop

    .end local v4    # "result":I
    .end local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "restoreOldPolicy":Z
    .end local v9    # "error":Ljava/lang/Throwable;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "loadFlags":I
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 716
    .end local v12    # "currentSoSourcesVersion":I
    .restart local v4    # "result":I
    .restart local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v8    # "restoreOldPolicy":Z
    .restart local v9    # "error":Ljava/lang/Throwable;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "loadFlags":I
    :cond_9
    :goto_7
    if-nez v18, :cond_2

    .line 720
    .end local v18    # "retry":Z
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_a

    .line 721
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 724
    :cond_a
    if-eqz v8, :cond_b

    .line 725
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 727
    :cond_b
    if-eqz v4, :cond_c

    const/4 v10, 0x3

    if-ne v4, v10, :cond_17

    .line 729
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "message":Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 731
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 732
    .local v5, "cause":Ljava/lang/String;
    if-nez v5, :cond_d

    .line 733
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .end local v5    # "cause":Ljava/lang/String;
    :cond_e
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v3, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 720
    .end local v0    # "message":Ljava/lang/String;
    :catchall_4
    move-exception v0

    sget-boolean v10, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v10, :cond_f

    .line 721
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 724
    :cond_f
    if-eqz v8, :cond_10

    .line 725
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 727
    :cond_10
    if-eqz v4, :cond_12

    const/4 v10, 0x3

    if-ne v4, v10, :cond_11

    goto :goto_8

    .line 740
    :cond_11
    throw v0

    .line 729
    :cond_12
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .restart local v0    # "message":Ljava/lang/String;
    if-eqz v9, :cond_14

    .line 731
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 732
    .restart local v5    # "cause":Ljava/lang/String;
    if-nez v5, :cond_13

    .line 733
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .end local v5    # "cause":Ljava/lang/String;
    :cond_14
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v3, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 717
    .end local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 718
    .local v0, "t":Ljava/lang/Throwable;
    move-object v9, v0

    .line 720
    .end local v0    # "t":Ljava/lang/Throwable;
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_15

    .line 721
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 724
    :cond_15
    if-eqz v8, :cond_16

    .line 725
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 727
    :cond_16
    if-eqz v4, :cond_18

    const/4 v10, 0x3

    if-ne v4, v10, :cond_17

    goto :goto_9

    .line 741
    :cond_17
    return-void

    .line 729
    :cond_18
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "message":Ljava/lang/String;
    nop

    .line 731
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 732
    .restart local v5    # "cause":Ljava/lang/String;
    if-nez v5, :cond_19

    .line 733
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    :cond_19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .end local v5    # "cause":Ljava/lang/String;
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v3, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 652
    .end local v0    # "message":Ljava/lang/String;
    .end local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "restoreOldPolicy":Z
    .end local v9    # "error":Ljava/lang/Throwable;
    .restart local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_1a
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because no SO source exists"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .end local v4    # "result":I
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "loadFlags":I
    .end local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 656
    .restart local v4    # "result":I
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "loadFlags":I
    .restart local p2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_5
    move-exception v0

    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 657
    throw v0

    return-void
.end method

.method private static getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/Runtime;

    const-string v2, "nativeLoad"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    .line 421
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 424
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    return-object v0

    .line 426
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "SoLoader"

    const-string v3, "Cannot get nativeLoad method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    return-object v1

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V

    .line 165
    return-void
.end method

.method private static init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "soFileLoader"    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 180
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-static {p2}, Lcom/facebook/soloader/SoLoader;->initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V

    .line 181
    invoke-static {p0, p1, p2}, Lcom/facebook/soloader/SoLoader;->initSoSources(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 184
    throw v1
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeExopackage"    # Z

    .line 190
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    nop

    .line 194
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V
    .locals 10
    .param p0, "soFileLoader"    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 332
    if-eqz p0, :cond_0

    .line 333
    :try_start_0
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit v0

    return-void

    .line 337
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 338
    .local v5, "runtime":Ljava/lang/Runtime;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v7, v1

    .line 340
    .local v7, "nativeLoadRuntimeMethod":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 342
    .local v8, "hasNativeLoadMethod":Z
    if-eqz v8, :cond_2

    .line 343
    invoke-static {}, Lcom/facebook/soloader/SoLoader$Api14Utils;->getClassLoaderLdLoadLibrary()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v3, v1

    .line 344
    .local v3, "localLdLibraryPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/soloader/SoLoader;->makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "localLdLibraryPathNoZips":Ljava/lang/String;
    new-instance v9, Lcom/facebook/soloader/SoLoader$1;

    move-object v1, v9

    move v2, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/facebook/soloader/SoLoader$1;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runtime;Ljava/lang/reflect/Method;)V

    sput-object v9, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    monitor-exit v0

    return-void

    .line 331
    .end local v3    # "localLdLibraryPath":Ljava/lang/String;
    .end local v4    # "localLdLibraryPathNoZips":Ljava/lang/String;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    .end local v7    # "nativeLoadRuntimeMethod":Ljava/lang/reflect/Method;
    .end local v8    # "hasNativeLoadMethod":Z
    .end local p0    # "soFileLoader":Lcom/facebook/soloader/SoFileLoader;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initSoSources(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "soFileLoader"    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    move-object/from16 v1, p0

    const-string v2, "init exiting"

    const-string v3, "SoLoader"

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 200
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_c

    .line 201
    const-string v0, "init start"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sput p1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    const-string v4, "LD_LIBRARY_PATH"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "LD_LIBRARY_PATH":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 212
    const-string v5, "/vendor/lib:/system/lib"

    move-object v4, v5

    .line 215
    :cond_0
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "systemLibraryDirectories":[Ljava/lang/String;
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding system library source: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v8, Ljava/io/File;

    aget-object v9, v5, v7

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v8, "systemSoDirectory":Ljava/io/File;
    new-instance v9, Lcom/facebook/soloader/DirectorySoSource;

    const/4 v10, 0x2

    invoke-direct {v9, v8, v10}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    nop

    .end local v8    # "systemSoDirectory":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 232
    .end local v7    # "i":I
    :cond_1
    const/4 v7, 0x1

    if-eqz v1, :cond_a

    .line 237
    and-int/lit8 v8, p1, 0x1

    const-string v9, "lib-main"

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    .line 238
    :try_start_1
    sput-object v10, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    .line 239
    const-string v8, "adding exo package source: lib-main"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v8, Lcom/facebook/soloader/ExoSoSource;

    invoke-direct {v8, v1, v9}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    goto/16 :goto_5

    .line 242
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 243
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v7

    if-eqz v11, :cond_3

    iget v11, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 247
    .local v11, "isSystemApplication":Z
    :goto_1
    if-eqz v11, :cond_4

    .line 248
    const/4 v12, 0x0

    .local v12, "apkSoSourceFlags":I
    goto :goto_2

    .line 250
    .end local v12    # "apkSoSourceFlags":I
    :cond_4
    const/4 v12, 0x1

    .line 251
    .restart local v12    # "apkSoSourceFlags":I
    const/4 v13, 0x0

    .line 258
    .local v13, "ourSoSourceFlags":I
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x11

    if-gt v14, v15, :cond_5

    .line 259
    or-int/lit8 v13, v13, 0x1

    .line 262
    :cond_5
    new-instance v14, Lcom/facebook/soloader/ApplicationSoSource;

    invoke-direct {v14, v1, v13}, Lcom/facebook/soloader/ApplicationSoSource;-><init>(Landroid/content/Context;I)V

    sput-object v14, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding application source: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v15}, Lcom/facebook/soloader/ApplicationSoSource;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v14, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v0, v6, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    .end local v13    # "ourSoSourceFlags":I
    :goto_2
    sget v13, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_6

    .line 268
    sput-object v10, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    goto/16 :goto_5

    .line 271
    :cond_6
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v10, "mainApkDir":Ljava/io/File;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v13, "backupSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/UnpackingSoSource;>;"
    new-instance v14, Lcom/facebook/soloader/ApkSoSource;

    invoke-direct {v14, v1, v10, v9, v12}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    move-object v9, v14

    .line 275
    .local v9, "mainApkSource":Lcom/facebook/soloader/ApkSoSource;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding backup source from : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/facebook/soloader/ApkSoSource;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_9

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 280
    const-string v14, "adding backup sources from split apks"

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v14, 0x0

    .line 282
    .local v14, "splitIndex":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v7, v15

    move v6, v14

    const/4 v14, 0x0

    .end local v14    # "splitIndex":I
    .local v6, "splitIndex":I
    :goto_3
    if-ge v14, v7, :cond_7

    aget-object v16, v15, v14

    move-object/from16 v17, v16

    .line 283
    .local v17, "splitApkDir":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .local v16, "LD_LIBRARY_PATH":Ljava/lang/String;
    new-instance v4, Lcom/facebook/soloader/ApkSoSource;

    move-object/from16 v18, v5

    .end local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .local v18, "systemLibraryDirectories":[Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move/from16 v19, v7

    move-object/from16 v7, v17

    .end local v17    # "splitApkDir":Ljava/lang/String;
    .local v7, "splitApkDir":Ljava/lang/String;
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v7

    .end local v7    # "splitApkDir":Ljava/lang/String;
    .restart local v17    # "splitApkDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v20, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "lib-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "splitIndex":I
    .local v8, "splitIndex":I
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6, v12}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 289
    .local v4, "splitApkSource":Lcom/facebook/soloader/ApkSoSource;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding backup source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/facebook/soloader/ApkSoSource;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    nop

    .end local v4    # "splitApkSource":Lcom/facebook/soloader/ApkSoSource;
    .end local v17    # "splitApkDir":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move v6, v8

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    goto :goto_3

    .end local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v4, "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v6    # "splitIndex":I
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v8

    .end local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_4

    .line 279
    .end local v6    # "splitIndex":I
    .end local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v8

    .end local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_4

    .line 278
    .end local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v8

    .line 294
    .end local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/facebook/soloader/UnpackingSoSource;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/facebook/soloader/UnpackingSoSource;

    sput-object v4, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    .line 295
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v13}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_5

    .line 232
    .end local v9    # "mainApkSource":Lcom/facebook/soloader/ApkSoSource;
    .end local v10    # "mainApkDir":Ljava/io/File;
    .end local v11    # "isSystemApplication":Z
    .end local v12    # "apkSoSourceFlags":I
    .end local v13    # "backupSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/UnpackingSoSource;>;"
    .end local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    .end local v20    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .line 300
    .end local v4    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v5    # "systemLibraryDirectories":[Ljava/lang/String;
    .restart local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .restart local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/facebook/soloader/SoSource;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/facebook/soloader/SoSource;

    .line 301
    .local v4, "finalSoSources":[Lcom/facebook/soloader/SoSource;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v5

    .line 302
    .local v5, "prepareFlags":I
    array-length v6, v4

    .local v6, "i":I
    :goto_6
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "i":I
    .local v7, "i":I
    if-lez v6, :cond_b

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preparing SO source: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    aget-object v6, v4, v7

    invoke-virtual {v6, v5}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    move v6, v7

    goto :goto_6

    .line 306
    .end local v7    # "i":I
    :cond_b
    sput-object v4, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 307
    sget v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sput v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init finish: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " SO sources prepared"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .end local v0    # "soSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/SoSource;>;"
    .end local v4    # "finalSoSources":[Lcom/facebook/soloader/SoSource;
    .end local v5    # "prepareFlags":I
    .end local v16    # "LD_LIBRARY_PATH":Ljava/lang/String;
    .end local v18    # "systemLibraryDirectories":[Ljava/lang/String;
    :cond_c
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 313
    nop

    .line 314
    return-void

    .line 311
    :catchall_0
    move-exception v0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 313
    throw v0

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p0, "shortName"    # Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "shortName"    # Ljava/lang/String;
    .param p1, "loadFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 499
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_3

    .line 503
    const-string v0, "http://www.android.com/"

    const-string v1, "java.vendor.url"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    goto :goto_1

    .line 508
    :cond_0
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 510
    .local v1, "needsLoad":Z
    if-eqz v1, :cond_2

    .line 511
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v2, :cond_1

    .line 512
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    invoke-interface {v2, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 517
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 517
    return v1

    .line 518
    .end local v1    # "needsLoad":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "shortName":Ljava/lang/String;
    .end local p1    # "loadFlags":I
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
    .restart local p0    # "shortName":Ljava/lang/String;
    .restart local p1    # "loadFlags":I
    :cond_3
    :goto_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 523
    nop

    .line 525
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "mergedLibName":Ljava/lang/String;
    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, p0

    .line 529
    .local v1, "soName":Ljava/lang/String;
    :goto_2
    nop

    .line 530
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v3, p1, 0x2

    const/4 v4, 0x0

    .line 529
    invoke-static {v2, p0, v0, v3, v4}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v2

    return v2

    .line 522
    .end local v0    # "mergedLibName":Ljava/lang/String;
    .end local v1    # "soName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 523
    throw v0
.end method

.method static loadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "loadFlags"    # I
    .param p2, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 539
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    .line 540
    return-void
.end method

.method private static loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 8
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "shortName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mergedLibName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadFlags"    # I
    .param p4, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    return v1

    .line 557
    :cond_0
    const/4 v0, 0x0

    .line 558
    .local v0, "loaded":Z
    const-class v2, Lcom/facebook/soloader/SoLoader;

    monitor-enter v2

    .line 559
    :try_start_0
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    if-nez p2, :cond_1

    .line 562
    monitor-exit v2

    return v1

    .line 564
    :cond_1
    const/4 v0, 0x1

    .line 566
    :cond_2
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "loadingLibLock":Ljava/lang/Object;
    goto :goto_0

    .line 569
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 570
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 574
    monitor-enter v3

    .line 575
    if-nez v0, :cond_7

    .line 576
    :try_start_1
    const-class v2, Lcom/facebook/soloader/SoLoader;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 577
    :try_start_2
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 579
    if-nez p2, :cond_4

    .line 581
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return v1

    .line 583
    :cond_4
    const/4 v0, 0x1

    .line 586
    :cond_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 588
    if-nez v0, :cond_7

    .line 590
    :try_start_5
    const-string v2, "SoLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {p0, p3, p4}, Lcom/facebook/soloader/SoLoader;->doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 600
    nop

    .line 601
    :try_start_6
    const-class v2, Lcom/facebook/soloader/SoLoader;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 602
    :try_start_7
    const-string v4, "SoLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_8
    throw v1

    .line 594
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_0
    move-exception v1

    .line 595
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v4, "unexpected e_machine:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 597
    new-instance v4, Lcom/facebook/soloader/SoLoader$WrongAbiError;

    invoke-direct {v4, v1}, Lcom/facebook/soloader/SoLoader$WrongAbiError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v4

    .line 599
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_6
    nop

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v1

    .line 592
    .end local v1    # "ex":Ljava/lang/UnsatisfiedLinkError;
    .end local v2    # "message":Ljava/lang/String;
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_1
    move-exception v1

    .line 593
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 586
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_a
    throw v1

    .line 608
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_7
    :goto_1
    nop

    .line 609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_8

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 610
    .local v2, "isAlreadyMerged":Z
    :goto_2
    if-eqz p2, :cond_b

    if-nez v2, :cond_b

    .line 611
    sget-boolean v5, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v5, :cond_9

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MergedSoMapping.invokeJniOnload["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 615
    :cond_9
    :try_start_b
    const-string v5, "SoLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to merge: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {p1}, Lcom/facebook/soloader/MergedSoMapping;->invokeJniOnload(Ljava/lang/String;)V

    .line 617
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 619
    :try_start_c
    sget-boolean v5, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v5, :cond_b

    .line 620
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    goto :goto_3

    .line 619
    :catchall_2
    move-exception v1

    sget-boolean v4, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v4, :cond_a

    .line 620
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 622
    :cond_a
    nop

    .end local v0    # "loaded":Z
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    .end local p0    # "soName":Ljava/lang/String;
    .end local p1    # "shortName":Ljava/lang/String;
    .end local p2    # "mergedLibName":Ljava/lang/String;
    .end local p3    # "loadFlags":I
    .end local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    throw v1

    .line 624
    .end local v2    # "isAlreadyMerged":Z
    .restart local v0    # "loaded":Z
    .restart local v3    # "loadingLibLock":Ljava/lang/Object;
    .restart local p0    # "soName":Ljava/lang/String;
    .restart local p1    # "shortName":Ljava/lang/String;
    .restart local p2    # "mergedLibName":Ljava/lang/String;
    .restart local p3    # "loadFlags":I
    .restart local p4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_b
    :goto_3
    monitor-exit v3

    .line 625
    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 624
    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1

    .line 572
    .end local v3    # "loadingLibLock":Ljava/lang/Object;
    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1
.end method

.method public static makeLdLibraryPath()Ljava/lang/String;
    .locals 6

    .line 816
    const-string v0, "SoLoader"

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 818
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 819
    const-string v1, "makeLdLibraryPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v1, "pathElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 822
    .local v2, "soSources":[Lcom/facebook/soloader/SoSource;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 823
    aget-object v4, v2, v3

    invoke-virtual {v4, v1}, Lcom/facebook/soloader/SoSource;->addToLdLibraryPath(Ljava/util/Collection;)V

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    .end local v3    # "i":I
    :cond_0
    const-string v3, ":"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, "joinedPaths":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeLdLibraryPath final path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    nop

    .line 829
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 827
    return-object v3

    .line 829
    .end local v1    # "pathElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "soSources":[Lcom/facebook/soloader/SoSource;
    .end local v3    # "joinedPaths":Ljava/lang/String;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 830
    throw v0

    return-void
.end method

.method public static makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "localLdLibraryPath"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 745
    if-nez p0, :cond_0

    .line 746
    const/4 v0, 0x0

    return-object v0

    .line 749
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "paths":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v2, "pathsWithoutZip":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 752
    .local v5, "path":Ljava/lang/String;
    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 753
    goto :goto_1

    .line 755
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .end local v5    # "path":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 758
    :cond_2
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makePrepareFlags()I
    .locals 3

    .line 317
    const/4 v0, 0x0

    .line 320
    .local v0, "prepareFlags":I
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 322
    :try_start_0
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 323
    or-int/lit8 v0, v0, 0x1

    .line 325
    :cond_0
    nop

    .line 327
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 325
    return v0

    .line 327
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 328
    throw v1
.end method

.method public static prependSoSource(Lcom/facebook/soloader/SoSource;)V
    .locals 6
    .param p0, "extraSoSource"    # Lcom/facebook/soloader/SoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    const-string v0, "SoLoader"

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 797
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepending to SO sources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 799
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    .line 800
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/facebook/soloader/SoSource;

    .line 801
    .local v1, "newSoSources":[Lcom/facebook/soloader/SoSource;
    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 802
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    sget-object v5, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v5, v5

    invoke-static {v4, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 804
    sget v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    add-int/2addr v3, v2

    sput v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepended to SO sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    nop

    .end local v1    # "newSoSources":[Lcom/facebook/soloader/SoSource;
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 808
    nop

    .line 809
    return-void

    .line 807
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 808
    throw v0
.end method

.method static resetStatus()V
    .locals 2

    .line 460
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 461
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 462
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 463
    const/4 v1, 0x0

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    .line 464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setInTestMode()V
    .locals 3

    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    new-instance v1, Lcom/facebook/soloader/NoopSoSource;

    invoke-direct {v1}, Lcom/facebook/soloader/NoopSoSource;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    .line 435
    return-void
.end method

.method static setSoFileLoader(Lcom/facebook/soloader/SoFileLoader;)V
    .locals 0
    .param p0, "loader"    # Lcom/facebook/soloader/SoFileLoader;

    .line 455
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    .line 456
    return-void
.end method

.method static setSoSources([Lcom/facebook/soloader/SoSource;)V
    .locals 2
    .param p0, "sources"    # [Lcom/facebook/soloader/SoSource;

    .line 444
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 446
    :try_start_0
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 447
    sget v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 450
    throw v0
.end method

.method public static setSystemLoadLibraryWrapper(Lcom/facebook/soloader/SystemLoadLibraryWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 473
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 474
    return-void
.end method

.method public static unpackLibraryAndDependencies(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "shortName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 637
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 639
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 764
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 765
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->unpackLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    .local v1, "unpacked":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 767
    nop

    .line 771
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 767
    return-object v1

    .line 764
    .end local v1    # "unpacked":Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 772
    nop

    .line 774
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 772
    throw v0

    return-void
.end method
