.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;

.field final synthetic val$cause:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;Ljava/lang/Exception;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->val$cause:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->val$cause:Ljava/lang/Exception;

    instance-of v1, v0, Lcom/facebook/react/common/DebugServerException;

    if-eqz v1, :cond_0

    .line 1007
    check-cast v0, Lcom/facebook/react/common/DebugServerException;

    .line 1008
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;

    iget-object v1, v1, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-virtual {v0}, Lcom/facebook/react/common/DebugServerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->val$cause:Ljava/lang/Exception;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;

    iget-object v1, v1, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .line 1011
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$string;->catalyst_jsload_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24$2;->val$cause:Ljava/lang/Exception;

    .line 1010
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
