.class Lcom/android/launcher2/ThumbnailView$1;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ThumbnailView;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/launcher2/ThumbnailView$1;->this$0:Lcom/android/launcher2/ThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView$1;->this$0:Lcom/android/launcher2/ThumbnailView;

    iget-object v1, v1, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView$1;->this$0:Lcom/android/launcher2/ThumbnailView;

    iget-object v1, v1, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v1}, Lcom/android/launcher2/ThumbnailViewAdapter;->getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 528
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 532
    .end local v0           #listener:Landroid/view/animation/Animation$AnimationListener;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView$1;->this$0:Lcom/android/launcher2/ThumbnailView;

    invoke-virtual {v1}, Lcom/android/launcher2/ThumbnailView;->clearSwitchingAnimation()V

    .line 533
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 522
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView$1;->this$0:Lcom/android/launcher2/ThumbnailView;

    iget-object v1, v1, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView$1;->this$0:Lcom/android/launcher2/ThumbnailView;

    iget-object v1, v1, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v1}, Lcom/android/launcher2/ThumbnailViewAdapter;->getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 515
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 519
    .end local v0           #listener:Landroid/view/animation/Animation$AnimationListener;
    :cond_0
    return-void
.end method
