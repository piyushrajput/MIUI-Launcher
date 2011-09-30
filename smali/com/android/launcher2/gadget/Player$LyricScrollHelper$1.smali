.class Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;
.super Landroid/os/Handler;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 595
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 597
    :pswitch_0
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$3000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$2900(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getLyricShot(J)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    move-result-object v1

    .line 598
    .local v1, lyricShot:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$3000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$3000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getAccurateLineHeight()F

    move-result v4

    iget v5, v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    iget-wide v6, v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->percent:D

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3100(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;FID)I

    move-result v2

    .line 601
    .local v2, scrollHeight:I
    if-lez v2, :cond_0

    .line 602
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$3200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->slideTo(I)V

    goto :goto_0

    .line 608
    .end local v1           #lyricShot:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    .end local v2           #scrollHeight:I
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.player.requestprogress"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    iget-object v3, v3, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$3300(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
