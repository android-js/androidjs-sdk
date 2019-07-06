.class Lcom/facebook/react/modules/permissions/PermissionsModule$2;
.super Ljava/lang/Object;
.source "PermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/permissions/PermissionsModule;->requestMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

.field final synthetic val$grantedPermissions:Lcom/facebook/react/bridge/WritableMap;

.field final synthetic val$permissionsToCheck:Ljava/util/ArrayList;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/permissions/PermissionsModule;Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/permissions/PermissionsModule;

    .line 168
    iput-object p1, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->this$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

    iput-object p2, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$grantedPermissions:Lcom/facebook/react/bridge/WritableMap;

    iput-object p4, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, [I

    check-cast v0, [I

    .line 172
    .local v0, "results":[I
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    .line 173
    .local v1, "activity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "permission":Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_0

    aget v4, v0, v2

    if-nez v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$grantedPermissions:Lcom/facebook/react/bridge/WritableMap;

    const-string v5, "granted"

    invoke-interface {v4, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {v1, v3}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$grantedPermissions:Lcom/facebook/react/bridge/WritableMap;

    const-string v5, "denied"

    invoke-interface {v4, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$grantedPermissions:Lcom/facebook/react/bridge/WritableMap;

    const-string v5, "never_ask_again"

    invoke-interface {v4, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v3    # "permission":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "j":I
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v3, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$2;->val$grantedPermissions:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 186
    return-void
.end method
