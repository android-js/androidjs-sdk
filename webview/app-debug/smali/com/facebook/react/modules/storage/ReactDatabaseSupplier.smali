.class public Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ReactDatabaseSupplier.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "RKStorage"

.field private static final DATABASE_VERSION:I = 0x1

.field static final KEY_COLUMN:Ljava/lang/String; = "key"

.field private static final SLEEP_TIME_MS:I = 0x1e

.field static final TABLE_CATALYST:Ljava/lang/String; = "catalystLocalStorage"

.field static final VALUE_COLUMN:Ljava/lang/String; = "value"

.field static final VERSION_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE catalystLocalStorage (key TEXT PRIMARY KEY, value TEXT NOT NULL)"

.field private static sReactDatabaseSupplierInstance:Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMaximumDatabaseSize:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const-string v0, "RKStorage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    const-wide/32 v0, 0x600000

    iput-wide v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mMaximumDatabaseSize:J

    .line 50
    iput-object p1, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized deleteDatabase()Z
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->closeDatabase()V

    .line 151
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mContext:Landroid/content/Context;

    const-string v1, "RKStorage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 149
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static deleteInstance()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->sReactDatabaseSupplierInstance:Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    .line 164
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->sReactDatabaseSupplierInstance:Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->sReactDatabaseSupplierInstance:Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    .line 57
    :cond_0
    sget-object v0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->sReactDatabaseSupplierInstance:Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "catalystLocalStorage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAndCloseDatabase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->clear()V

    .line 121
    invoke-direct {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->closeDatabase()V

    .line 122
    const-string v0, "ReactNative"

    const-string v1, "Cleaned RKStorage"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    nop

    .line 132
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->deleteDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "ReactNative"

    const-string v2, "Deleted Local Database RKStorage"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Clearing and deleting database RKStorage failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ensureDatabase()Z
    .locals 5

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 78
    monitor-exit p0

    return v1

    .line 82
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "lastSQLiteException":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    .local v2, "tries":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 85
    if-lez v2, :cond_1

    .line 86
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->deleteDatabase()Z

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    move-object v0, v3

    .line 95
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v3, 0x1e

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    goto :goto_1

    .line 96
    :catch_1
    move-exception v3

    .line 97
    .local v3, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 83
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "tries":I
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v3, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mMaximumDatabaseSize:J

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    monitor-exit p0

    return v1

    .line 101
    :cond_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    .end local v0    # "lastSQLiteException":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized get()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->ensureDatabase()Z

    .line 115
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    const-string v0, "CREATE TABLE catalystLocalStorage (key TEXT PRIMARY KEY, value TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 67
    if-eq p2, p3, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->deleteDatabase()Z

    .line 69
    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    :cond_0
    return-void
.end method

.method public declared-synchronized setMaximumSize(J)V
    .locals 3
    .param p1, "size"    # J

    monitor-enter p0

    .line 143
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mMaximumDatabaseSize:J

    .line 144
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p0, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->mMaximumDatabaseSize:J

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local p0    # "this":Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    .end local p1    # "size":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
