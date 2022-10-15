.class Lcom/android/js/api/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/api/App;->setDefaultFontSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/js/api/App;

.field final synthetic val$fontSize:I


# direct methods
.method constructor <init>(Lcom/android/js/api/App;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/js/api/App;

    .line 66
    iput-object p1, p0, Lcom/android/js/api/App$1;->this$0:Lcom/android/js/api/App;

    iput p2, p0, Lcom/android/js/api/App$1;->val$fontSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/js/api/App$1;->this$0:Lcom/android/js/api/App;

    invoke-static {v0}, Lcom/android/js/api/App;->access$000(Lcom/android/js/api/App;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 70
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    iget v1, p0, Lcom/android/js/api/App$1;->val$fontSize:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 71
    return-void
.end method
