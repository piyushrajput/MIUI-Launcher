.class public Lcom/android/launcher2/OnLongClickWrapper;
.super Landroid/widget/FrameLayout;
.source "OnLongClickWrapper.java"

# interfaces
.implements Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;


# instance fields
.field private mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/launcher2/OnLongClickWrapper;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 18
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, -0x1

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/android/launcher2/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 71
    return-void
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/OnLongClickWrapper;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/android/launcher2/OnLongClickAgent;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/OnLongClickAgent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 42
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/OnLongClickWrapper;->preventPressState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/OnLongClickWrapper;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/OnLongClickWrapper;->setPressed(Z)V

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 56
    :cond_0
    return v0
.end method

.method public preventPressState()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 26
    new-instance v0, Lcom/android/launcher2/OnLongClickAgent;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/launcher2/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v0, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    .line 27
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickWrapper;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 66
    return-void
.end method
