.class public Lcom/android/launcher2/gadget/Player;
.super Landroid/widget/FrameLayout;
.source "Player.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Player$MusicUtils;,
        Lcom/android/launcher2/gadget/Player$FadeAnimation;,
        Lcom/android/launcher2/gadget/Player$AlbumHelper;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
    }
.end annotation


# instance fields
.field private mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

.field private mAlbumImage:Landroid/widget/ImageView;

.field private mAlbumWraper:Landroid/widget/FrameLayout;

.field private mArtistNameStr:Ljava/lang/String;

.field private mCachableWrap:Landroid/view/View;

.field private mCurrentPos:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:J

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEditMode:Z

.field private mIsFavoriteSong:Z

.field private mIsPlaying:Z

.field private mIsResume:Z

.field private mIsUpdateLyricAndTime:Z

.field private mLastDownY:F

.field private mLastUpdateProgressTime:J

.field private mLastUpdateTime:J

.field private mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

.field private mLyricWraper:Landroid/widget/ScrollView;

.field private mNeedInitGadget:Z

.field private mPlayButton:Landroid/widget/ImageView;

.field private mProgressBg:Landroid/widget/FrameLayout;

.field private mProgressCurrent:Landroid/widget/ImageView;

.field private mProgressLoading:Landroid/widget/ImageView;

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSv:Landroid/widget/SpectrumVisualizer;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:F

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackNameStr:Ljava/lang/String;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v1, Lcom/android/launcher2/gadget/Player$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$1;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    .line 452
    new-instance v1, Lcom/android/launcher2/gadget/Player$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$2;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    .line 463
    iput-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    .line 464
    iput-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateProgressTime:J

    .line 513
    new-instance v1, Lcom/android/launcher2/gadget/Player$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$3;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->setupViews()V

    .line 82
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->initReceiver()V

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 85
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher2/gadget/Player;->mTouchSlop:F

    .line 87
    new-instance v1, Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Player$AlbumHelper;-><init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    .line 88
    new-instance v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;-><init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    .line 89
    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateLyricAndTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/gadget/Player;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->checkException(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateTrack(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$AlbumHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher2/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher2/gadget/Player;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher2/gadget/Player;->mTouchSlop:F

    return v0
.end method

.method static synthetic access$4000(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/launcher2/gadget/Player;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/launcher2/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/launcher2/gadget/Player;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkException(Ljava/lang/String;)Z
    .locals 5
    .parameter "trackName"

    .prologue
    const-wide/16 v3, 0x0

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, errorState:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x1040399

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 372
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->reset()V

    .line 375
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 376
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(J)V

    .line 377
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$1000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    .line 378
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$1100(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 379
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 380
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 381
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    .line 382
    const/4 v1, 0x1

    .line 384
    :goto_1
    return v1

    .line 368
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x7f0a004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    .line 232
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 233
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 234
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    .line 101
    return-void
.end method

.method private lyricAndTimeNextRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 491
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 492
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "-- : --"

    .line 388
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 391
    iput-object v3, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 392
    iput-object v3, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 394
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020066

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    .line 401
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    return-void

    .line 395
    :cond_0
    const v1, 0x7f020067

    goto :goto_0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const v2, 0x7f070026

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v1, 0x7f030016

    invoke-static {v0, v1, p0}, Lcom/android/launcher2/gadget/Player;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCachableWrap:Landroid/view/View;

    .line 124
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 130
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    .line 131
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    .line 134
    return-void
.end method

.method private showBuffering()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0059

    invoke-static {v1, v3, v4, v2}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 408
    return-void
.end method

.method private updateBufferedProgress(J)V
    .locals 5
    .parameter "bufferPos"

    .prologue
    .line 429
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 431
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 434
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateBufferedProgress(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 424
    const-string v2, "buffered_pos"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 425
    .local v0, bufferPos:J
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(J)V

    .line 426
    return-void
.end method

.method private updateCurrentProgress(J)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 440
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 442
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 445
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateDrawingCache()V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 274
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 276
    :cond_1
    return-void

    .line 274
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLyricAndTime()V
    .locals 6

    .prologue
    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 467
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$1300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;J)V

    .line 470
    :cond_0
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 471
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 472
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 473
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 476
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-eqz v2, :cond_3

    .line 477
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateProgressTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateProgressBarAndTime()V

    .line 479
    iput-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateProgressTime:J

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->lyricAndTimeNextRefresh()V

    .line 482
    iput-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    goto :goto_0
.end method

.method private updateMetaStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f020048

    const v4, 0x7f020047

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, metaStatus:I
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$700(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    or-int/lit8 v0, v0, 0x2

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    or-int/lit8 v0, v0, 0x1

    .line 307
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_2
    return-void

    .line 298
    :cond_0
    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 305
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 309
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 314
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 319
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v4}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$900(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 324
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v4}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$900(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgressBarAndTime()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const v6, 0x7f0a0059

    const-wide/16 v4, 0x3e8

    .line 502
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 511
    :cond_0
    return-void
.end method

.method private updateSongStatus(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 332
    const-string v8, "current_time"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 334
    .local v1, currentTime:J
    const-string v8, "current_system_time"

    invoke-virtual {p1, v8, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 335
    .local v6, time:J
    iget-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    sub-long v10, v1, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 336
    const-string v8, "total_time"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    .line 337
    const-string v8, "playing"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    .line 338
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v9, :cond_1

    const v9, 0x7f020070

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    const-string v8, "favorite"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 342
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v9, :cond_2

    const v9, 0x7f020066

    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const-string v8, "buffer"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 347
    .local v4, isBuffering:Z
    const-string v8, "block"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 348
    .local v3, isBlocking:Z
    iget-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 350
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 351
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 353
    const/16 v0, 0x64

    .line 354
    .local v0, MAX_INVALID_DURATION:I
    if-nez v4, :cond_0

    iget-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    :cond_0
    iget-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    if-nez v8, :cond_4

    const/4 v8, 0x1

    move v5, v8

    .line 355
    .local v5, isShowBuffering:Z
    :goto_3
    if-eqz v5, :cond_5

    .line 356
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->showBuffering()V

    .line 360
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    .line 361
    return-void

    .line 338
    .end local v0           #MAX_INVALID_DURATION:I
    .end local v3           #isBlocking:Z
    .end local v4           #isBuffering:Z
    .end local v5           #isShowBuffering:Z
    :cond_1
    const v9, 0x7f020073

    goto :goto_0

    .line 342
    :cond_2
    const v9, 0x7f020067

    goto :goto_1

    .line 348
    .restart local v3       #isBlocking:Z
    .restart local v4       #isBuffering:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 354
    .restart local v0       #MAX_INVALID_DURATION:I
    :cond_4
    const/4 v8, 0x0

    move v5, v8

    goto :goto_3

    .line 358
    .restart local v5       #isShowBuffering:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateProgressBarAndTime()V

    goto :goto_4
.end method

.method private updateSpectrumVisualizer()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    invoke-virtual {v0}, Landroid/widget/SpectrumVisualizer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0
.end method

.method private updateTrack(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 413
    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 414
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Player$MusicUtils;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 416
    .local v0, ar:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/launcher2/gadget/Player$MusicUtils;->getTrackInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 421
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const-string v4, "from_widget"

    .line 137
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsEditMode:Z

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 173
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v1, :cond_3

    .line 174
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.NOW_PLAYING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v1, "from_widget"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "playlist"

    const-string v2, "nowplaying"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    const-string v1, "from_widget"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 160
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v2, :cond_2

    const v2, 0x7f020073

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f020070

    goto :goto_2

    .line 167
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 176
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.MEDIA_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 183
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-nez v1, :cond_4

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 184
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v2, :cond_5

    const v2, 0x7f020066

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.togglefavorite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 183
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 184
    :cond_5
    const v2, 0x7f020067

    goto :goto_4

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f070026
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1153
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->cleanup()V

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsEditMode:Z

    .line 1172
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsEditMode:Z

    .line 1178
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher2/gadget/Player;->mLastDownY:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;FF)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/gadget/Player;->mLastDownY:F

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->cleanup()V

    .line 250
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player;->registerExternalStorageListener()V

    .line 255
    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    .line 256
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCachableWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 259
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    .line 264
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$500(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$600(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 268
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCachableWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1162
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/gadget/Player;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 212
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    goto :goto_0
.end method

.method public registerExternalStorageListener()V
    .locals 4

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1183
    new-instance v1, Lcom/android/launcher2/gadget/Player$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$4;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1199
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1200
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1203
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1204
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1205
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1167
    return-void
.end method
