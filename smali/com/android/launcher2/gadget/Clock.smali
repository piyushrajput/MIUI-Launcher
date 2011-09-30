.class public Lcom/android/launcher2/gadget/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Clock$ClockStyle;,
        Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;
    }
.end annotation


# instance fields
.field protected mCalendar:Ljava/util/Calendar;

.field protected mClockStyle:Lcom/android/launcher2/gadget/Clock$ClockStyle;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Clock;->mTickerStopped:Z

    .line 36
    iput-object p1, p0, Lcom/android/launcher2/gadget/Clock;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/gadget/Clock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Clock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/gadget/Clock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Clock;->updateCurTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/gadget/Clock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/gadget/Clock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateCurTime()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mClockStyle:Lcom/android/launcher2/gadget/Clock$ClockStyle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mClockStyle:Lcom/android/launcher2/gadget/Clock$ClockStyle;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-interface {v1, v2}, Lcom/android/launcher2/gadget/Clock$ClockStyle;->updateAppearance(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "com.android.launcher2.gadget.Clock"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Clock;->mTickerStopped:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/android/launcher2/gadget/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/Clock$1;-><init>(Lcom/android/launcher2/gadget/Clock;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Clock;->mTickerStopped:Z

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    .line 74
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 57
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Clock;->mTickerStopped:Z

    .line 59
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/android/launcher2/gadget/Clock;Lcom/android/launcher2/gadget/Clock$1;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setClockStyle(Lcom/android/launcher2/gadget/Clock$ClockStyle;)V
    .locals 0
    .parameter "clockStyle"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/gadget/Clock;->mClockStyle:Lcom/android/launcher2/gadget/Clock$ClockStyle;

    .line 86
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Clock;->updateCurTime()V

    .line 87
    return-void
.end method
