.class public Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;
.super Lcom/facebook/react/views/text/ReactTextInlineImageShadowNode;
.source "FrescoBasedReactTextInlineImageShadowNode.java"


# instance fields
.field private final mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

.field private mHeaders:Lcom/facebook/react/bridge/ReadableMap;

.field private mHeight:F

.field private mTintColor:I

.field private mUri:Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "draweeControllerBuilder"    # Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .param p2, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextInlineImageShadowNode;-><init>()V

    .line 42
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mWidth:F

    .line 43
    iput v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mHeight:F

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mTintColor:I

    .line 49
    iput-object p1, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 50
    iput-object p2, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mCallerContext:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private static getResourceDrawableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 121
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "resId":I
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 130
    const-string v2, "res"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 129
    return-object v1

    .line 122
    .end local v0    # "resId":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public buildInlineImageSpan()Lcom/facebook/react/views/text/TextInlineImageSpan;
    .locals 13

    .line 142
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, "resources":Landroid/content/res/Resources;
    iget v1, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mWidth:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 144
    .local v10, "width":I
    iget v1, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mHeight:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v11, v1

    .line 145
    .local v11, "height":I
    new-instance v12, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageSpan;

    iget v5, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mTintColor:I

    .line 150
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 151
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getHeaders()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 152
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getDraweeControllerBuilder()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v8

    .line 153
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getCallerContext()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v12

    move-object v2, v0

    move v3, v11

    move v4, v10

    invoke-direct/range {v1 .. v9}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageSpan;-><init>(Landroid/content/res/Resources;IIILandroid/net/Uri;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Ljava/lang/Object;)V

    .line 145
    return-object v12
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getDraweeControllerBuilder()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-object v0
.end method

.method public getHeaders()Lcom/facebook/react/bridge/ReadableMap;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mHeaders:Lcom/facebook/react/bridge/ReadableMap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public setHeaders(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "headers"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "headers"
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mHeaders:Lcom/facebook/react/bridge/ReadableMap;

    .line 81
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 103
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_0

    .line 104
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mHeight:F

    .line 109
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Inline images must not have percentage based height"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSource(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "sources"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "src"
    .end annotation

    .line 55
    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 57
    .local v0, "source":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 58
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 60
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    .line 62
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    .line 63
    const/4 v1, 0x0

    .line 67
    :cond_2
    goto :goto_2

    .line 65
    :catch_0
    move-exception v2

    .line 68
    :goto_2
    if-nez v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->getResourceDrawableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mUri:Landroid/net/Uri;

    if-eq v1, v2, :cond_4

    .line 73
    invoke-virtual {p0}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->markUpdated()V

    .line 75
    :cond_4
    iput-object v1, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mUri:Landroid/net/Uri;

    .line 76
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "tintColor"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "tintColor"
    .end annotation

    .line 85
    iput p1, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mTintColor:I

    .line 86
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 93
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_0

    .line 94
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageShadowNode;->mWidth:F

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Inline images must not have percentage based width"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
