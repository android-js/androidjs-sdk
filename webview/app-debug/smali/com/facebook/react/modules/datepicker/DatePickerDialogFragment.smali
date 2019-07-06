.class public Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_DATE:J = -0x20251fe2401L


# instance fields
.field private mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/Dialog;
    .locals 17
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "onDateSetListener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 49
    .local v1, "c":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    const-string v2, "date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 52
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 53
    .local v10, "year":I
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 54
    .local v11, "month":I
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 56
    .local v12, "day":I
    sget-object v3, Lcom/facebook/react/modules/datepicker/DatePickerMode;->DEFAULT:Lcom/facebook/react/modules/datepicker/DatePickerMode;

    .line 57
    .local v3, "mode":Lcom/facebook/react/modules/datepicker/DatePickerMode;
    if-eqz v0, :cond_1

    const/4 v4, 0x0

    const-string v5, "mode"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/react/modules/datepicker/DatePickerMode;->valueOf(Ljava/lang/String;)Lcom/facebook/react/modules/datepicker/DatePickerMode;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    .line 61
    :cond_1
    move-object v13, v3

    .end local v3    # "mode":Lcom/facebook/react/modules/datepicker/DatePickerMode;
    .local v13, "mode":Lcom/facebook/react/modules/datepicker/DatePickerMode;
    :goto_0
    const/4 v14, 0x0

    .line 63
    .local v14, "dialog":Landroid/app/DatePickerDialog;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v15, 0x0

    if-lt v3, v4, :cond_5

    .line 64
    sget-object v3, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment$1;->$SwitchMap$com$facebook$react$modules$datepicker$DatePickerMode:[I

    invoke-virtual {v13}, Lcom/facebook/react/modules/datepicker/DatePickerMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "style"

    if-eq v3, v2, :cond_4

    if-eq v3, v9, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    goto :goto_1

    .line 76
    :cond_2
    new-instance v2, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    move-object v3, v2

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v14, v2

    goto :goto_1

    .line 71
    :cond_3
    new-instance v2, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SpinnerDatePickerDialog"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v3, v2

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v14, v2

    .line 74
    goto :goto_1

    .line 66
    :cond_4
    new-instance v2, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalendarDatePickerDialog"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v3, v2

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v14, v2

    .line 69
    nop

    .line 77
    :goto_1
    goto :goto_2

    .line 80
    :cond_5
    new-instance v16, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object/from16 v14, v16

    .line 82
    sget-object v3, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment$1;->$SwitchMap$com$facebook$react$modules$datepicker$DatePickerMode:[I

    invoke-virtual {v13}, Lcom/facebook/react/modules/datepicker/DatePickerMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_7

    if-eq v3, v9, :cond_6

    goto :goto_2

    .line 88
    :cond_6
    invoke-virtual {v14}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    goto :goto_2

    .line 84
    :cond_7
    invoke-virtual {v14}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 85
    invoke-virtual {v14}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 86
    nop

    .line 93
    :goto_2
    invoke-virtual {v14}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    .line 95
    .local v2, "datePicker":Landroid/widget/DatePicker;
    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    if-eqz v0, :cond_8

    const-string v7, "minDate"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 99
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    invoke-virtual {v1, v6, v15}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v1, v5, v15}, Ljava/util/Calendar;->set(II)V

    .line 102
    invoke-virtual {v1, v4, v15}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v1, v3, v15}, Ljava/util/Calendar;->set(II)V

    .line 104
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_3

    .line 108
    :cond_8
    const-wide v7, -0x20251fe2401L

    invoke-virtual {v2, v7, v8}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 110
    :goto_3
    if-eqz v0, :cond_9

    const-string v7, "maxDate"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 112
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    const/16 v7, 0x17

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/16 v6, 0x3b

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 115
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v4, 0x3e7

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 117
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 120
    :cond_9
    return-object v14
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-static {v0, v1, v2}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 129
    :cond_0
    return-void
.end method

.method setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "onDateSetListener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    iput-object p1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 133
    return-void
.end method

.method setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iput-object p1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 137
    return-void
.end method
