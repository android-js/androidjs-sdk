.class Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;
.super Ljava/lang/Object;
.source "TimePickerDialogModule.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerDialogListener"
.end annotation


# instance fields
.field private final mPromise:Lcom/facebook/react/bridge/Promise;

.field private mPromiseResolved:Z

.field final synthetic this$0:Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;

    .line 65
    iput-object p1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->this$0:Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromiseResolved:Z

    .line 66
    iput-object p2, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 67
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 83
    iget-boolean v0, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromiseResolved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->this$0:Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;

    invoke-static {v0}, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;->access$100(Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 85
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "action"

    const-string v2, "dismissedAction"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromiseResolved:Z

    .line 89
    .end local v0    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .line 71
    iget-boolean v0, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromiseResolved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->this$0:Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;

    invoke-static {v0}, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;->access$000(Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 73
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "action"

    const-string v2, "timeSetAction"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "hour"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "minute"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 76
    iget-object v1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule$TimePickerDialogListener;->mPromiseResolved:Z

    .line 79
    .end local v0    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method
