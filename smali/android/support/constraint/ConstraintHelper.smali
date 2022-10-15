.class public abstract Landroid/support/constraint/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

.field protected mIds:[I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReferenceIds:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field private mViews:[Landroid/view/View;

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .locals 4
    .param p1, "idString"    # Ljava/lang/String;

    .line 242
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 246
    return-void

    .line 249
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "parent":Landroid/support/constraint/ConstraintLayout;
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 255
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->findId(Ljava/lang/String;)I

    move-result v1

    .line 256
    .local v1, "rscId":I
    if-eqz v1, :cond_3

    .line 257
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    goto :goto_0

    .line 260
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find id of \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 243
    .end local v0    # "parent":Landroid/support/constraint/ConstraintLayout;
    .end local v1    # "rscId":I
    :cond_4
    :goto_1
    return-void
.end method

.method private addRscID(I)V
    .locals 3
    .param p1, "id"    # I

    .line 193
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 197
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 199
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    aput p1, v0, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 201
    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "referenceIdString"    # Ljava/lang/String;

    .line 504
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "split":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 506
    .local v1, "context":Landroid/content/Context;
    array-length v2, v0

    new-array v2, v2, [I

    .line 507
    .local v2, "rscIds":[I
    const/4 v3, 0x0

    .line 508
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 509
    aget-object v5, v0, v4

    .line 510
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 511
    invoke-direct {p0, v5}, Landroid/support/constraint/ConstraintHelper;->findId(Ljava/lang/String;)I

    move-result v6

    .line 512
    .local v6, "id":I
    if-eqz v6, :cond_0

    .line 513
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput v6, v2, v3

    move v3, v7

    .line 508
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "id":I
    .end local v7    # "count":I
    .restart local v3    # "count":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    .end local v4    # "i":I
    :cond_1
    array-length v4, v0

    if-eq v3, v4, :cond_2

    .line 517
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 519
    :cond_2
    return-object v2
.end method

.method private findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I
    .locals 7
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;
    .param p2, "idString"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 322
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 323
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 324
    return v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    .line 327
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 328
    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 329
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 330
    const/4 v5, 0x0

    .line 332
    .local v5, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 335
    goto :goto_1

    .line 333
    :catch_0
    move-exception v6

    .line 336
    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 337
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    .line 327
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "res":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v3    # "j":I
    :cond_3
    return v0

    .line 320
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "count":I
    :cond_4
    :goto_2
    return v0
.end method

.method private findId(Ljava/lang/String;)I
    .locals 5
    .param p1, "referenceId"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "parent":Landroid/support/constraint/ConstraintLayout;
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 274
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, "rscId":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/support/constraint/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 279
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 280
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 285
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 287
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/ConstraintHelper;->findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I

    move-result v1

    .line 290
    :cond_2
    if-nez v1, :cond_3

    .line 292
    :try_start_0
    const-class v2, Landroid/support/constraint/R$id;

    .line 293
    .local v2, "res":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 294
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 297
    .end local v2    # "res":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 295
    :catch_0
    move-exception v2

    .line 300
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 303
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v4, "id"

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 307
    :cond_4
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 129
    if-ne p1, p0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConstraintHelper"

    if-ne v0, v1, :cond_1

    .line 133
    const-string v0, "Views added to a ConstraintHelper need to have an id"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 137
    const-string v0, "Views added to a ConstraintHelper need to have a parent"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 142
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->requestLayout()V

    .line 143
    return-void
.end method

.method protected applyLayoutFeatures()V
    .locals 2

    .line 391
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 392
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 393
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintHelper;->applyLayoutFeatures(Landroid/support/constraint/ConstraintLayout;)V

    .line 395
    :cond_0
    return-void
.end method

.method protected applyLayoutFeatures(Landroid/support/constraint/ConstraintLayout;)V
    .locals 7
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 370
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getVisibility()I

    move-result v0

    .line 371
    .local v0, "visibility":I
    const/4 v1, 0x0

    .line 372
    .local v1, "elevation":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 373
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getElevation()F

    move-result v1

    .line 375
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v2, v4, :cond_2

    .line 376
    iget-object v4, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v4, v4, v2

    .line 377
    .local v4, "id":I
    invoke-virtual {p1, v4}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    .line 378
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 379
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_1

    .line 381
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 375
    .end local v4    # "id":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 174
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;
    .locals 4
    .param p1, "layout"    # Landroid/support/constraint/ConstraintLayout;

    .line 444
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-eq v0, v1, :cond_1

    .line 445
    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 448
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_2

    .line 449
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 450
    .local v1, "id":I
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 448
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 103
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 105
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v3, v4, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v4}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 103
    .end local v3    # "attr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_2
    return-void
.end method

.method public loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "constraint"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p2, "child"    # Landroid/support/constraint/solver/widgets/HelperWidget;
    .param p3, "layoutParams"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            "Landroid/support/constraint/solver/widgets/HelperWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 484
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 488
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, p0, v1}, Landroid/support/constraint/ConstraintHelper;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    .line 491
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/HelperWidget;->removeAllIds()V

    .line 492
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_3

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 494
    iget-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    aget v1, v1, v0

    .line 495
    .local v1, "id":I
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 496
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {p2, v2}, Landroid/support/constraint/solver/widgets/HelperWidget;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 493
    .end local v1    # "id":I
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 117
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 209
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 216
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/constraint/ConstraintHelper;->setMeasuredDimension(II)V

    .line 221
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 152
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v1, v2, :cond_3

    .line 157
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_2

    .line 158
    move v2, v1

    .local v2, "j":I
    :goto_1
    iget v3, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_1

    .line 159
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    add-int/lit8 v4, v2, 0x1

    aget v4, v3, v4

    aput v4, v3, v2

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 162
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 163
    goto :goto_2

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->requestLayout()V

    .line 167
    return-void
.end method

.method public resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .locals 0
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 524
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .locals 3
    .param p1, "idList"    # Ljava/lang/String;

    .line 348
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 349
    if-nez p1, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "begin":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 355
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 356
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 358
    nop

    .line 363
    .end local v1    # "end":I
    return-void

    .line 360
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 361
    add-int/lit8 v0, v1, 0x1

    .line 362
    .end local v1    # "end":I
    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 2
    .param p1, "ids"    # [I

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 185
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public updatePostConstraints(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0
    .param p1, "constainer"    # Landroid/support/constraint/ConstraintLayout;

    .line 475
    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 463
    return-void
.end method

.method public updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 471
    return-void
.end method

.method public updatePreDraw(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 479
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 7
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 404
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_1

    .line 408
    return-void

    .line 410
    :cond_1
    invoke-interface {v0}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_4

    .line 412
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 413
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    .line 414
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_2

    .line 417
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 418
    .local v3, "candidate":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Landroid/support/constraint/ConstraintHelper;->findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I

    move-result v4

    .line 419
    .local v4, "foundId":I
    if-eqz v4, :cond_2

    .line 420
    iget-object v5, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aput v4, v5, v0

    .line 421
    iget-object v5, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p1, v4}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    .line 425
    .end local v3    # "candidate":Ljava/lang/String;
    .end local v4    # "foundId":I
    :cond_2
    if-eqz v2, :cond_3

    .line 426
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 411
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    iget-object v1, p1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/widgets/Helper;->updateConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 430
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "helper"    # Landroid/support/constraint/solver/widgets/Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Landroid/support/constraint/solver/widgets/Helper;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-interface {p2}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 438
    .local v1, "id":I
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-interface {p2, v2}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 436
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public validateParams()V
    .locals 3

    .line 228
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 232
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 233
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 234
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 236
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    return-void
.end method
