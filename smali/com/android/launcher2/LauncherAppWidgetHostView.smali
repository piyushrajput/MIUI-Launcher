.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "context"
    .parameter "launcher"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    new-instance v0, Lcom/android/launcher2/OnLongClickAgent;

    invoke-direct {v0, p0, p2, p0}, Lcom/android/launcher2/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    .line 43
    iput-object p2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/android/launcher2/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 82
    return-void
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    return-void
.end method
