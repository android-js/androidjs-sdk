.class Lcom/facebook/react/modules/storage/AsyncStorageModule$3;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "AsyncStorageModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/storage/AsyncStorageModule;->multiRemove(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$keys:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/storage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/storage/AsyncStorageModule;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 267
    iput-object p1, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    iput-object p3, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 267
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .line 270
    const-string v0, "ReactNative"

    iget-object v1, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v1}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$000(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getDBError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 272
    return-void

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, "error":Lcom/facebook/react/bridge/WritableMap;
    :try_start_0
    iget-object v5, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v5}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    move v5, v3

    .local v5, "keyStart":I
    :goto_0
    iget-object v6, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 279
    iget-object v6, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    const/16 v7, 0x3e7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 280
    .local v6, "keyCount":I
    iget-object v7, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v7}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "catalystLocalStorage"

    .line 282
    invoke-static {v6}, Lcom/facebook/react/modules/storage/AsyncLocalStorageUtil;->buildKeySelection(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 283
    invoke-static {v10, v5, v6}, Lcom/facebook/react/modules/storage/AsyncLocalStorageUtil;->buildKeySelectionArgs(Lcom/facebook/react/bridge/ReadableArray;II)[Ljava/lang/String;

    move-result-object v10

    .line 280
    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    nop

    .end local v6    # "keyCount":I
    add-int/lit16 v5, v5, 0x3e7

    goto :goto_0

    .line 285
    .end local v5    # "keyStart":I
    :cond_1
    iget-object v5, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v5}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :try_start_1
    iget-object v5, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v5}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 292
    :catch_0
    move-exception v5

    .line 293
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    if-nez v1, :cond_2

    .line 295
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_2

    .line 290
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 286
    :catch_1
    move-exception v5

    .line 287
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v6

    .line 291
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v5}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 297
    :goto_1
    goto :goto_3

    .line 292
    :catch_2
    move-exception v5

    .line 293
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    if-nez v1, :cond_2

    .line 295
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    move-object v1, v0

    .line 298
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    nop

    .line 299
    :goto_3
    if-eqz v1, :cond_3

    .line 300
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_4

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 304
    :goto_4
    return-void

    .line 291
    :goto_5
    :try_start_4
    iget-object v3, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$3;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v3}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 297
    goto :goto_6

    .line 292
    :catch_3
    move-exception v3

    .line 293
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    if-nez v1, :cond_4

    .line 295
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 298
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    throw v2

    return-void
.end method
