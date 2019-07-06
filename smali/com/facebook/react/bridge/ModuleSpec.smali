.class public Lcom/facebook/react/bridge/ModuleSpec;
.super Ljava/lang/Object;
.source "ModuleSpec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleSpec"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleSpec;->mType:Ljava/lang/Class;

    .line 57
    iput-object p1, p0, Lcom/facebook/react/bridge/ModuleSpec;->mProvider:Ljavax/inject/Provider;

    .line 58
    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleSpec;->mName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleSpec;->mType:Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/facebook/react/bridge/ModuleSpec;->mProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p2, p0, Lcom/facebook/react/bridge/ModuleSpec;->mName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)",
            "Lcom/facebook/react/bridge/ModuleSpec;"
        }
    .end annotation

    .line 31
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    const-class v0, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/module/annotations/ReactModule;

    .line 32
    .local v0, "annotation":Lcom/facebook/react/module/annotations/ReactModule;
    if-nez v0, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find @ReactModule annotation on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". So creating the module eagerly to get the name. Consider adding an annotation to make this Lazy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "ModuleSpec"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/NativeModule;

    .line 39
    .local v1, "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    invoke-interface {v1}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljavax/inject/Provider;Ljava/lang/String;)V

    return-object v2

    .line 41
    .end local v1    # "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    invoke-interface {v0}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljavax/inject/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static nativeModuleSpec(Ljava/lang/String;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)",
            "Lcom/facebook/react/bridge/ModuleSpec;"
        }
    .end annotation

    .line 47
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v0, Lcom/facebook/react/bridge/ModuleSpec;

    invoke-direct {v0, p1, p0}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljavax/inject/Provider;Ljava/lang/String;)V

    return-object v0
.end method

.method public static viewManagerSpec(Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)",
            "Lcom/facebook/react/bridge/ModuleSpec;"
        }
    .end annotation

    .line 26
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v0, Lcom/facebook/react/bridge/ModuleSpec;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleSpec;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleSpec;->mProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleSpec;->mType:Ljava/lang/Class;

    return-object v0
.end method
