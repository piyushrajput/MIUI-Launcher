.class Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricScrollHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    }
.end annotation


# instance fields
.field private mCurrentTime:J

.field private final mLyricHandler:Landroid/os/Handler;

.field private mLyricMoveStatus:I

.field private mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

.field private mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    new-instance v0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    .line 584
    new-instance v0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    .line 585
    new-instance v0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    invoke-static {p1}, Lcom/android/launcher2/gadget/Player;->access$2700(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    .line 586
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    new-instance v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Lcom/android/launcher2/gadget/Player$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setDuration(J)V

    .line 588
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;-><init>(Lcom/android/launcher2/gadget/Player;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->clearup()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->scrollLyric(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->sendMessageIfNeeded(FF)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    iput p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->lyricProgressRequest()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z

    move-result v0

    return v0
.end method

.method private clearup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->reset()V

    .line 680
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V

    .line 681
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;[I)V

    .line 682
    return-void
.end method

.method private hasLyric()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3500(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)Z

    move-result v0

    return v0
.end method

.method private lyricProgressRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 617
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player;->access$2500(Lcom/android/launcher2/gadget/Player;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 621
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)V

    .line 674
    iput v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    .line 675
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2700(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 676
    return-void
.end method

.method private scrollLyric(J)V
    .locals 8
    .parameter "time"

    .prologue
    .line 656
    iput-wide p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mCurrentTime:J

    .line 657
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    if-eqz v4, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    iget-wide v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mCurrentTime:J

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getLyricShot(J)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    move-result-object v2

    .line 661
    .local v2, lyricShot:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    const/4 v0, -0x1

    .line 662
    .local v0, MIN_VALID_LINE_INDEX:I
    iget v4, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    const/4 v5, -0x1

    if-lt v4, v5, :cond_0

    .line 663
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    iget v5, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->updateCurrentLine(I)V

    .line 664
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-virtual {v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getAccurateLineHeight()F

    move-result v1

    .line 665
    .local v1, lineHeight:F
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    iget v5, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    iget-wide v6, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->percent:D

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3100(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;FID)I

    move-result v3

    .line 666
    .local v3, scrollHeight:I
    if-lez v3, :cond_0

    .line 667
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v4}, Lcom/android/launcher2/gadget/Player;->access$2700(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method private sendMessageIfNeeded(FF)V
    .locals 5
    .parameter "currentY"
    .parameter "originalY"

    .prologue
    const/4 v4, 0x1

    .line 647
    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v2}, Lcom/android/launcher2/gadget/Player;->access$3700(Lcom/android/launcher2/gadget/Player;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    iput v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    .line 653
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateLyricStatus(Landroid/content/Intent;Z)V
    .locals 5
    .parameter "intent"
    .parameter "needFetchLyric"

    .prologue
    const/4 v4, 0x6

    .line 627
    const-string v3, "lyric_status"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 628
    .local v1, lyricStatus:I
    if-ne v1, v4, :cond_1

    .line 629
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->reset()V

    .line 630
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V

    .line 638
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$200(Lcom/android/launcher2/gadget/Player;)V

    .line 639
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$1200(Lcom/android/launcher2/gadget/Player;)V

    .line 640
    return-void

    .line 631
    :cond_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3500(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 632
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->reset()V

    .line 633
    const-string v3, "lyric"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 634
    .local v0, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v3, v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V

    .line 635
    const-string v3, "lyric_time"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 636
    .local v2, timeArr:[I
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v3, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;[I)V

    goto :goto_0
.end method
