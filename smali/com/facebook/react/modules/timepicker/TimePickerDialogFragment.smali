.class public Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TimePickerDialogFragment.java"


# instance fields
.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;)Landroid/app/Dialog;
    .locals 15
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "onTimeSetListener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    move-object v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 43
    .local v1, "now":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 44
    .local v3, "hour":I
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 45
    .local v5, "minute":I
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 47
    .local v6, "is24hour":Z
    sget-object v7, Lcom/facebook/react/modules/timepicker/TimePickerMode;->DEFAULT:Lcom/facebook/react/modules/timepicker/TimePickerMode;

    .line 48
    .local v7, "mode":Lcom/facebook/react/modules/timepicker/TimePickerMode;
    if-eqz v0, :cond_0

    const/4 v8, 0x0

    const-string v9, "mode"

    invoke-virtual {p0, v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 49
    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/react/modules/timepicker/TimePickerMode;->valueOf(Ljava/lang/String;)Lcom/facebook/react/modules/timepicker/TimePickerMode;

    move-result-object v7

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v8, "hour"

    invoke-virtual {p0, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 54
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v4, "minute"

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 55
    nop

    .line 57
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 55
    const-string v4, "is24Hour"

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 60
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_3

    .line 61
    sget-object v2, Lcom/facebook/react/modules/timepicker/TimePickerMode;->CLOCK:Lcom/facebook/react/modules/timepicker/TimePickerMode;

    const-string v4, "style"

    if-ne v7, v2, :cond_2

    .line 62
    new-instance v2, Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 64
    const-string v10, "ClockTimePickerDialog"

    invoke-virtual {v8, v10, v4, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object v8, v2

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move v12, v3

    move v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 62
    return-object v2

    .line 74
    :cond_2
    sget-object v2, Lcom/facebook/react/modules/timepicker/TimePickerMode;->SPINNER:Lcom/facebook/react/modules/timepicker/TimePickerMode;

    if-ne v7, v2, :cond_3

    .line 75
    new-instance v2, Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 77
    const-string v10, "SpinnerTimePickerDialog"

    invoke-virtual {v8, v10, v4, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object v8, v2

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move v12, v3

    move v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 75
    return-object v2

    .line 89
    :cond_3
    new-instance v2, Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;

    move-object v8, v2

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v11, v3

    move v12, v5

    move v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-virtual {p0}, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->mOnTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    invoke-static {v0, v1, v2}, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 108
    return-void
.end method

.method public setOnTimeSetListener(Landroid/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .param p1, "onTimeSetListener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    iput-object p1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogFragment;->mOnTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 112
    return-void
.end method
