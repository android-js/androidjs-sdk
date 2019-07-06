.class public Lcom/facebook/systrace/Systrace;
.super Ljava/lang/Object;
.source "Systrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/systrace/Systrace$EventScope;
    }
.end annotation


# static fields
.field public static final TRACE_TAG_REACT_APPS:J

.field public static final TRACE_TAG_REACT_FRESCO:J

.field public static final TRACE_TAG_REACT_JAVA_BRIDGE:J

.field public static final TRACE_TAG_REACT_JS_VM_CALLS:J

.field public static final TRACE_TAG_REACT_VIEW:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginAsyncSection(JLjava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 73
    return-void
.end method

.method public static beginAsyncSection(JLjava/lang/String;IJ)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "startNanos"    # J

    .line 76
    return-void
.end method

.method public static beginSection(JLjava/lang/String;)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 59
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static endAsyncFlow(JLjava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 109
    return-void
.end method

.method public static endAsyncSection(JLjava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 82
    return-void
.end method

.method public static endAsyncSection(JLjava/lang/String;IJ)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "endNanos"    # J

    .line 85
    return-void
.end method

.method public static endSection(J)V
    .locals 2
    .param p0, "tag"    # J

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    :cond_0
    return-void
.end method

.method public static isTracing(J)Z
    .locals 1
    .param p0, "tag"    # J

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public static registerListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/facebook/systrace/TraceListener;

    .line 42
    return-void
.end method

.method public static startAsyncFlow(JLjava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 97
    return-void
.end method

.method public static stepAsyncFlow(JLjava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 103
    return-void
.end method

.method public static traceCounter(JLjava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I

    .line 91
    return-void
.end method

.method public static traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V
    .locals 0
    .param p0, "tag"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "scope"    # Lcom/facebook/systrace/Systrace$EventScope;

    .line 55
    return-void
.end method

.method public static unregisterListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/facebook/systrace/TraceListener;

    .line 45
    return-void
.end method
