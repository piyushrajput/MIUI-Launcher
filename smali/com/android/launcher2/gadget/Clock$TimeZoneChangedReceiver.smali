.class Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/Clock;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/android/launcher2/gadget/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Clock;Lcom/android/launcher2/gadget/Clock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/android/launcher2/gadget/Clock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/android/launcher2/gadget/Clock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/android/launcher2/gadget/Clock;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Clock;->access$000(Lcom/android/launcher2/gadget/Clock;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/android/launcher2/gadget/Clock;

    iget-object v0, v0, Lcom/android/launcher2/gadget/Clock;->mClockStyle:Lcom/android/launcher2/gadget/Clock$ClockStyle;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/android/launcher2/gadget/Clock;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Clock;->access$100(Lcom/android/launcher2/gadget/Clock;)V

    .line 110
    :cond_1
    return-void
.end method
