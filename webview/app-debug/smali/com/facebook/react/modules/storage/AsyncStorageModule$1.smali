.class Lcom/facebook/react/modules/storage/AsyncStorageModule$1;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "AsyncStorageModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/storage/AsyncStorageModule;->multiGet(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
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

    .line 129
    iput-object p1, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    iput-object p3, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 19
    .param p1, "params"    # [Ljava/lang/Void;

    .line 132
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v0}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$000(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getDBError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 134
    return-void

    .line 137
    :cond_0
    const-string v0, "key"

    const-string v6, "value"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "columns":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    .line 139
    .local v6, "keysRemaining":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v15

    .line 140
    .local v15, "data":Lcom/facebook/react/bridge/WritableArray;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "keyStart":I
    :goto_0
    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge v14, v0, :cond_6

    .line 141
    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    sub-int/2addr v0, v14

    const/16 v7, 0x3e7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 142
    .local v13, "keyCount":I
    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-static {v0}, Lcom/facebook/react/modules/storage/AsyncStorageModule;->access$100(Lcom/facebook/react/modules/storage/AsyncStorageModule;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 145
    invoke-static {v13}, Lcom/facebook/react/modules/storage/AsyncLocalStorageUtil;->buildKeySelection(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 146
    invoke-static {v0, v14, v13}, Lcom/facebook/react/modules/storage/AsyncLocalStorageUtil;->buildKeySelectionArgs(Lcom/facebook/react/bridge/ReadableArray;II)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    .line 142
    const-string v8, "catalystLocalStorage"

    move/from16 v17, v13

    .end local v13    # "keyCount":I
    .local v17, "keyCount":I
    move-object v13, v0

    move/from16 v18, v14

    .end local v14    # "keyStart":I
    .local v18, "keyStart":I
    move-object/from16 v14, v16

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 150
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 152
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v8, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v8}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v8, :cond_1

    .line 154
    move/from16 v0, v18

    .local v0, "keyIndex":I
    :goto_1
    move/from16 v8, v18

    .end local v18    # "keyStart":I
    .local v8, "keyStart":I
    add-int v14, v8, v17

    if-ge v0, v14, :cond_2

    .line 155
    :try_start_1
    iget-object v10, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    move/from16 v18, v8

    goto :goto_1

    .line 152
    .end local v0    # "keyIndex":I
    .end local v8    # "keyStart":I
    .restart local v18    # "keyStart":I
    :cond_1
    move/from16 v8, v18

    .line 159
    .end local v18    # "keyStart":I
    .restart local v8    # "keyStart":I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 162
    .local v0, "row":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 163
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 164
    invoke-interface {v15, v0}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    .line 165
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 166
    nop

    .end local v0    # "row":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    .line 173
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    nop

    .line 176
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 177
    .local v10, "key":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v11

    .line 178
    .local v11, "row":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v11, v10}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 179
    invoke-interface {v11}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    .line 180
    invoke-interface {v15, v11}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    .line 181
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "row":Lcom/facebook/react/bridge/WritableArray;
    goto :goto_2

    .line 182
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 140
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v17    # "keyCount":I
    add-int/lit16 v14, v8, 0x3e7

    .end local v8    # "keyStart":I
    .restart local v14    # "keyStart":I
    goto/16 :goto_0

    .line 168
    .end local v14    # "keyStart":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "keyStart":I
    .restart local v17    # "keyCount":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 173
    .end local v8    # "keyStart":I
    .restart local v18    # "keyStart":I
    :catchall_0
    move-exception v0

    move/from16 v8, v18

    .end local v18    # "keyStart":I
    .restart local v8    # "keyStart":I
    goto :goto_4

    .line 168
    .end local v8    # "keyStart":I
    .restart local v18    # "keyStart":I
    :catch_1
    move-exception v0

    move/from16 v8, v18

    .line 169
    .end local v18    # "keyStart":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "keyStart":I
    :goto_3
    :try_start_2
    const-string v10, "ReactNative"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    iget-object v10, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/facebook/react/modules/storage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v11

    aput-object v11, v2, v5

    aput-object v4, v2, v3

    invoke-interface {v10, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 171
    return-void

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    throw v0

    .line 140
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "keyStart":I
    .end local v17    # "keyCount":I
    .restart local v14    # "keyStart":I
    :cond_6
    move v8, v14

    .line 185
    .end local v14    # "keyStart":I
    iget-object v0, v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v5

    aput-object v15, v2, v3

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 186
    return-void
.end method
