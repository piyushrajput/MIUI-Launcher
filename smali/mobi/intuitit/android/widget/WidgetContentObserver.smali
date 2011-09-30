.class public Lmobi/intuitit/android/widget/WidgetContentObserver;
.super Landroid/database/ContentObserver;
.source "WidgetContentObserver.java"


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WidgetContentObserver"


# instance fields
.field widgetDataChangeListener:Lmobi/intuitit/android/widget/WidgetDataChangeListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lmobi/intuitit/android/widget/WidgetDataChangeListener;)V
    .locals 0
    .parameter "handler"
    .parameter "dataChangeListener_p"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 22
    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetContentObserver;->widgetDataChangeListener:Lmobi/intuitit/android/widget/WidgetDataChangeListener;

    .line 23
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    const-string v1, "WidgetContentObserver"

    .line 27
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetContentObserver;->widgetDataChangeListener:Lmobi/intuitit/android/widget/WidgetDataChangeListener;

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "WidgetContentObserver"

    const-string v0, "onChange"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetContentObserver;->widgetDataChangeListener:Lmobi/intuitit/android/widget/WidgetDataChangeListener;

    invoke-interface {v0}, Lmobi/intuitit/android/widget/WidgetDataChangeListener;->onChange()V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "WidgetContentObserver"

    const-string v0, "onChange -> no listerner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
