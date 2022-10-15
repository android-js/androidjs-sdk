.class Lcom/android/js/react_native/AndroidJSActivity$1;
.super Ljava/lang/Object;
.source "AndroidJSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/react_native/AndroidJSActivity;->start_node(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/js/react_native/AndroidJSActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/js/react_native/AndroidJSActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/js/react_native/AndroidJSActivity;

    .line 32
    iput-object p1, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->this$0:Lcom/android/js/react_native/AndroidJSActivity;

    iput-object p2, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/scripts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "nodeDir":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/js/other/Utils;->wasAPKUpdated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "nodeDirReference":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/js/other/Utils;->deleteFolderRecursively(Ljava/io/File;)Z

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "scripts"

    invoke-static {v2, v3, v0}, Lcom/android/js/other/Utils;->copyAssetFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    iget-object v2, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/js/other/Utils;->saveLastUpdateTime(Landroid/content/Context;)V

    .line 48
    .end local v1    # "nodeDirReference":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/android/js/react_native/AndroidJSActivity$1;->this$0:Lcom/android/js/react_native/AndroidJSActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "node"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/main.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/js/react_native/AndroidJSActivity;->startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;

    .line 51
    return-void
.end method
