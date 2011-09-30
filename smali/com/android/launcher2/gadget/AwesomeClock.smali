.class public Lcom/android/launcher2/gadget/AwesomeClock;
.super Landroid/widget/FrameLayout;
.source "AwesomeClock.java"

# interfaces
.implements Lcom/android/launcher2/gadget/Clock$ClockStyle;
.implements Lcom/android/launcher2/gadget/Gadget;


# instance fields
.field private mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

.field private mElementContext:Lcom/miui/android/screenelement/ScreenContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/AwesomeClock;->setWillNotDraw(Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, interval:I
    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/AwesomeView;->getUpdateInterval()I

    move-result v0

    .line 67
    :cond_0
    if-lez v0, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/16 v1, 0x3e8

    goto :goto_0
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 57
    new-instance v0, Lcom/miui/android/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/android/screenelement/ResourceManager;

    new-instance v3, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;

    invoke-direct {v3, p1}, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/miui/android/screenelement/ResourceManager;-><init>(Lcom/miui/android/screenelement/ResourceManager$ResourceLoader;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/android/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/android/screenelement/ResourceManager;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    .line 59
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 91
    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v1, Lcom/android/launcher2/gadget/AwesomeView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher2/gadget/AwesomeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    .line 96
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/gadget/AwesomeClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/gadget/AwesomeView;->load(Lcom/miui/android/screenelement/ScreenContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v1, v1, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    invoke-virtual {v1}, Lcom/miui/android/screenelement/ResourceManager;->clear()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/AwesomeView;->finish()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v0, v0, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ResourceManager;->clear()V

    .line 35
    :cond_1
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/AwesomeView;->pause()V

    .line 42
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/AwesomeView;->resume()V

    .line 49
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 3
    .parameter "calendar"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 83
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/gadget/AwesomeView;->tick(J)V

    .line 85
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v2, v2, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher2/gadget/AwesomeView;->updateTimeOfVar(Ljava/util/Calendar;JLcom/miui/android/screenelement/Variables;)V

    .line 86
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeClock;->mAwesomeView:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/AwesomeView;->invalidate()V

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 53
    return-void
.end method
