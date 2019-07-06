.class public Lcom/facebook/react/modules/clipboard/ClipboardModule;
.super Lcom/facebook/react/bridge/ContextBaseJavaModule;
.source "ClipboardModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "Clipboard"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "Clipboard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ContextBaseJavaModule;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private getClipboardService()Landroid/content/ClipboardManager;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/facebook/react/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "Clipboard"

    return-object v0
.end method

.method public getString(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/modules/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 44
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v1, "clipData":Landroid/content/ClipData;
    const-string v2, ""

    if-nez v1, :cond_0

    .line 46
    :try_start_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 49
    .local v3, "firstItem":Landroid/content/ClipData$Item;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 50
    .end local v3    # "firstItem":Landroid/content/ClipData$Item;
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    .end local v1    # "clipData":Landroid/content/ClipData;
    :goto_0
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 61
    .local v0, "clipdata":Landroid/content/ClipData;
    invoke-direct {p0}, Lcom/facebook/react/modules/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v1

    .line 62
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 63
    return-void
.end method
