.class public Landroid/support/constraint/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constraint"
.end annotation


# instance fields
.field public final layout:Landroid/support/constraint/ConstraintSet$Layout;

.field public mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mViewId:I

.field public final motion:Landroid/support/constraint/ConstraintSet$Motion;

.field public final propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

.field public final transform:Landroid/support/constraint/ConstraintSet$Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Landroid/support/constraint/ConstraintSet$PropertySet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet$PropertySet;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    .line 1260
    new-instance v0, Landroid/support/constraint/ConstraintSet$Motion;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet$Motion;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    .line 1261
    new-instance v0, Landroid/support/constraint/ConstraintSet$Layout;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet$Layout;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    .line 1262
    new-instance v0, Landroid/support/constraint/ConstraintSet$Transform;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet$Transform;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1256
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # Landroid/support/constraint/ConstraintHelper;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/support/constraint/Constraints$LayoutParams;

    .line 1256
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintSet$Constraint;->fillFromConstraints(Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/Constraints$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/support/constraint/Constraints$LayoutParams;

    .line 1256
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->fillFromConstraints(ILandroid/support/constraint/Constraints$LayoutParams;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/constraint/ConstraintSet$Constraint;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 1256
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/constraint/ConstraintSet$Constraint;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 1256
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->setColorValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/constraint/ConstraintSet$Constraint;Ljava/lang/String;F)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F

    .line 1256
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->setFloatValue(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/constraint/ConstraintSet$Constraint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 1256
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "param"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1336
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    .line 1337
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    .line 1338
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    .line 1339
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    .line 1340
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    .line 1341
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    .line 1342
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    .line 1343
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    .line 1344
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    .line 1345
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1346
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    .line 1347
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    .line 1348
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    .line 1349
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    .line 1351
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    .line 1352
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    .line 1353
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 1355
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    .line 1356
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    .line 1357
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    .line 1359
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1360
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1361
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    .line 1362
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    .line 1363
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    .line 1364
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    .line 1365
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->mWidth:I

    .line 1366
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->mHeight:I

    .line 1367
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    .line 1368
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    .line 1369
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    .line 1370
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    .line 1371
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    .line 1372
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    .line 1373
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    .line 1374
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 1375
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-boolean v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    .line 1376
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-boolean v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    .line 1377
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    .line 1378
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    .line 1379
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    .line 1380
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    .line 1381
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    .line 1382
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    .line 1383
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthPercent:F

    .line 1384
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightPercent:F

    .line 1385
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 1386
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    .line 1387
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1388
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1389
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneRightMargin:I

    .line 1390
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    .line 1391
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    .line 1393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1394
    .local v0, "currentapiVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1395
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    .line 1396
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    .line 1398
    :cond_0
    return-void
.end method

.method private fillFromConstraints(ILandroid/support/constraint/Constraints$LayoutParams;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "param"    # Landroid/support/constraint/Constraints$LayoutParams;

    .line 1319
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintSet$Constraint;->fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 1320
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    .line 1321
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    .line 1322
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    .line 1323
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    .line 1324
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    .line 1325
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    .line 1326
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    .line 1327
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    .line 1328
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    .line 1329
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    .line 1330
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    .line 1331
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    .line 1332
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget-boolean v1, p2, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    .line 1333
    return-void
.end method

.method private fillFromConstraints(Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V
    .locals 3
    .param p1, "helper"    # Landroid/support/constraint/ConstraintHelper;
    .param p2, "viewId"    # I
    .param p3, "param"    # Landroid/support/constraint/Constraints$LayoutParams;

    .line 1308
    invoke-direct {p0, p2, p3}, Landroid/support/constraint/ConstraintSet$Constraint;->fillFromConstraints(ILandroid/support/constraint/Constraints$LayoutParams;)V

    .line 1309
    instance-of v0, p1, Landroid/support/constraint/Barrier;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->mHelperType:I

    .line 1311
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/Barrier;

    .line 1312
    .local v0, "barrier":Landroid/support/constraint/Barrier;
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    invoke-virtual {v0}, Landroid/support/constraint/Barrier;->getType()I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    .line 1313
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    invoke-virtual {v0}, Landroid/support/constraint/Barrier;->getReferencedIds()[I

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1314
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    invoke-virtual {v0}, Landroid/support/constraint/Barrier;->getMargin()I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    .line 1316
    .end local v0    # "barrier":Landroid/support/constraint/Barrier;
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)Landroid/support/constraint/ConstraintAttribute;
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 1267
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintAttribute;

    .line 1269
    .local v0, "ret":Landroid/support/constraint/ConstraintAttribute;
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintAttribute;->getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConstraintAttribute is already a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1271
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintAttribute;->getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1274
    .end local v0    # "ret":Landroid/support/constraint/ConstraintAttribute;
    :cond_1
    new-instance v0, Landroid/support/constraint/ConstraintAttribute;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/ConstraintAttribute;-><init>(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)V

    .line 1275
    .restart local v0    # "ret":Landroid/support/constraint/ConstraintAttribute;
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :goto_0
    return-object v0
.end method

.method private setColorValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1293
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/ConstraintSet$Constraint;->get(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)Landroid/support/constraint/ConstraintAttribute;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/constraint/ConstraintAttribute;->setColorValue(I)V

    .line 1294
    return-void
.end method

.method private setFloatValue(Ljava/lang/String;F)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 1285
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/ConstraintSet$Constraint;->get(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)Landroid/support/constraint/ConstraintAttribute;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/constraint/ConstraintAttribute;->setFloatValue(F)V

    .line 1286
    return-void
.end method

.method private setIntValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1289
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;->INT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/ConstraintSet$Constraint;->get(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)Landroid/support/constraint/ConstraintAttribute;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/constraint/ConstraintAttribute;->setIntValue(I)V

    .line 1290
    return-void
.end method

.method private setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1281
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/ConstraintSet$Constraint;->get(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)Landroid/support/constraint/ConstraintAttribute;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/constraint/ConstraintAttribute;->setStringValue(Ljava/lang/String;)V

    .line 1282
    return-void
.end method


# virtual methods
.method public applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 2
    .param p1, "param"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1401
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->leftToLeft:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1402
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->leftToRight:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1403
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->rightToLeft:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1404
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->rightToRight:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1406
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->topToTop:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1407
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->topToBottom:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1408
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToTop:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1409
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->bottomToBottom:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1411
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->baselineToBaseline:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1413
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->startToEnd:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1414
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->startToStart:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1415
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->endToStart:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1416
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->endToEnd:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1418
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->leftMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 1419
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->rightMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 1420
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->topMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 1421
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->bottomMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 1422
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneStartMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1423
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneEndMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1424
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneTopMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1425
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->goneBottomMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1427
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalBias:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1428
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->verticalBias:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1430
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->circleConstraint:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 1431
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->circleRadius:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 1432
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->circleAngle:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1434
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1436
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1437
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->verticalWeight:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1438
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalWeight:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1439
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->verticalChainStyle:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1440
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1441
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 1442
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 1443
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthDefault:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1444
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightDefault:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1445
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthMax:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1446
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightMax:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1447
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthMin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1448
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightMin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1449
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->widthPercent:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1450
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->heightPercent:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1451
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->orientation:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1452
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->guidePercent:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1453
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->guideBegin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1454
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->guideEnd:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1455
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mWidth:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1456
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mHeight:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1457
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iput-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 1461
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1462
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 1463
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 1466
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 1467
    return-void
.end method

.method public clone()Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 3

    .line 1297
    new-instance v0, Landroid/support/constraint/ConstraintSet$Constraint;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>()V

    .line 1298
    .local v0, "clone":Landroid/support/constraint/ConstraintSet$Constraint;
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet$Layout;->copyFrom(Landroid/support/constraint/ConstraintSet$Layout;)V

    .line 1299
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet$Motion;->copyFrom(Landroid/support/constraint/ConstraintSet$Motion;)V

    .line 1300
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet$PropertySet;->copyFrom(Landroid/support/constraint/ConstraintSet$PropertySet;)V

    .line 1301
    iget-object v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet$Transform;->copyFrom(Landroid/support/constraint/ConstraintSet$Transform;)V

    .line 1302
    iget v1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    .line 1304
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    return-object v0
.end method
