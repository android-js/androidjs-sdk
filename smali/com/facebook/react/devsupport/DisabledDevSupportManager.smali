.class public Lcom/facebook/react/devsupport/DisabledDevSupportManager;
.super Ljava/lang/Object;
.source "DisabledDevSupportManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSupportManager;


# instance fields
.field private final mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-direct {v0}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DisabledDevSupportManager;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    .line 34
    return-void
.end method


# virtual methods
.method public addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 0
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "optionHandler"    # Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .line 44
    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "resourceURL"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevSupportEnabled()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadedJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastErrorTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceMapUrl()Ljava/lang/String;
    .locals 1

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 170
    iget-object v0, p0, Lcom/facebook/react/devsupport/DisabledDevSupportManager;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 171
    return-void
.end method

.method public handleReloadJS()V
    .locals 0

    .line 134
    return-void
.end method

.method public hasUpToDateJSBundleInCache()Z
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public hideRedboxDialog()V
    .locals 0

    .line 59
    return-void
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    .line 144
    return-void
.end method

.method public onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 94
    return-void
.end method

.method public onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 99
    return-void
.end method

.method public registerErrorCustomizer(Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;)V
    .locals 0
    .param p1, "errorCustomizer"    # Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;

    .line 166
    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleURL"    # Ljava/lang/String;

    .line 139
    return-void
.end method

.method public reloadSettings()V
    .locals 0

    .line 129
    return-void
.end method

.method public setDevSupportEnabled(Z)V
    .locals 0
    .param p1, "isDevSupportEnabled"    # Z

    .line 69
    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 0

    .line 64
    return-void
.end method

.method public showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "details"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "errorCookie"    # I

    .line 49
    return-void
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 39
    return-void
.end method

.method public startInspector()V
    .locals 0

    .line 74
    return-void
.end method

.method public stopInspector()V
    .locals 0

    .line 79
    return-void
.end method

.method public updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "details"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "errorCookie"    # I

    .line 54
    return-void
.end method
