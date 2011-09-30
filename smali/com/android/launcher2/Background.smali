.class public Lcom/android/launcher2/Background;
.super Landroid/view/SurfaceView;
.source "Background.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Background$1;,
        Lcom/android/launcher2/Background$DimAnimator;
    }
.end annotation


# instance fields
.field private mAnimator:Lcom/android/launcher2/Background$DimAnimator;

.field private mEditingBackground:Landroid/graphics/drawable/Drawable;

.field private mPreviewBackground:Landroid/graphics/drawable/Drawable;

.field private mWallpaperMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v0, Lcom/android/launcher2/Background$DimAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Background$DimAnimator;-><init>(Lcom/android/launcher2/Background;Lcom/android/launcher2/Background$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Background;->mAnimator:Lcom/android/launcher2/Background$DimAnimator;

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Background;->disableRequestTransparentRegion(Z)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Background;->disableClearHolderCanvas(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 31
    return-void
.end method


# virtual methods
.method public setDesktopMode()V
    .locals 5

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 114
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Background;->mAnimator:Lcom/android/launcher2/Background$DimAnimator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 115
    return-void
.end method

.method public setEnterEditingMode()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Background;->mAnimator:Lcom/android/launcher2/Background$DimAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 102
    return-void
.end method

.method public setEnterPreviewMode()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher2/Background;->mAnimator:Lcom/android/launcher2/Background$DimAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 94
    return-void
.end method

.method public setExitEditingMode()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher2/Background;->mAnimator:Lcom/android/launcher2/Background$DimAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method public setExitPreviewMode()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/Background;->mAnimator:Lcom/android/launcher2/Background$DimAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 98
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/Background;->setDesktopMode()V

    .line 131
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 125
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 135
    return-void
.end method
