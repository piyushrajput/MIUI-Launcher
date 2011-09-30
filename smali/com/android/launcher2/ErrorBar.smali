.class public Lcom/android/launcher2/ErrorBar;
.super Landroid/widget/TextView;
.source "ErrorBar.java"


# instance fields
.field private mCloseErrorBar:Ljava/lang/Runnable;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/android/launcher2/ErrorBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ErrorBar$1;-><init>(Lcom/android/launcher2/ErrorBar;)V

    iput-object v0, p0, Lcom/android/launcher2/ErrorBar;->mCloseErrorBar:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p0}, Lcom/android/launcher2/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ErrorBar;->mFadeIn:Landroid/view/animation/Animation;

    .line 21
    invoke-virtual {p0}, Lcom/android/launcher2/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ErrorBar;->mFadeOut:Landroid/view/animation/Animation;

    .line 22
    return-void
.end method

.method private showErrorOrWarning(IZ)V
    .locals 3
    .parameter "resId"
    .parameter "isWaring"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ErrorBar;->setText(I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar;->mCloseErrorBar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar;->mCloseErrorBar:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/launcher2/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/ErrorBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method


# virtual methods
.method hideError()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    return-void
.end method

.method public setMargins(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/launcher2/ErrorBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    return-void
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ErrorBar;->showErrorOrWarning(IZ)V

    .line 26
    return-void
.end method
