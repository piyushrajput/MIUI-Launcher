.class public Lcom/android/launcher2/DragView;
.super Landroid/view/View;
.source "DragView.java"

# interfaces
.implements Lcom/android/launcher2/TweenCallback;


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mScale:F

.field mTween:Lcom/android/launcher2/SymmetricalLinearTween;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/launcher2/DragView;->mAnimationScale:F

    .line 64
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    new-instance v0, Lcom/android/launcher2/SymmetricalLinearTween;

    const/4 v1, 0x0

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2, p0}, Lcom/android/launcher2/SymmetricalLinearTween;-><init>(ZILcom/android/launcher2/TweenCallback;)V

    iput-object v0, p0, Lcom/android/launcher2/DragView;->mTween:Lcom/android/launcher2/SymmetricalLinearTween;

    .line 68
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v5, scale:Landroid/graphics/Matrix;
    int-to-float v7, p7

    .line 70
    .local v7, scaleFactor:F
    const/high16 v0, 0x4220

    add-float/2addr v0, v7

    div-float v7, v0, v7

    iput v7, p0, Lcom/android/launcher2/DragView;->mScale:F

    .line 71
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 73
    const/4 v6, 0x1

    move-object v0, p2

    move v1, p5

    move v2, p6

    move v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    add-int/lit8 v0, p3, 0x14

    iput v0, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    .line 77
    add-int/lit8 v0, p4, 0x14

    iput v0, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    .line 78
    return-void
.end method


# virtual methods
.method move(II)V
    .locals 2
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 161
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 163
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 87
    iget v1, p0, Lcom/android/launcher2/DragView;->mAnimationScale:F

    .line 88
    .local v1, scale:F
    const v3, 0x3f7fbe77

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 90
    .local v2, width:F
    mul-float v3, v2, v1

    sub-float v3, v2, v3

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 91
    .local v0, offset:F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 94
    .end local v0           #offset:F
    .end local v2           #width:F
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/DragView;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public onTweenFinished()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onTweenStarted()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTweenValueChanged(FF)V
    .locals 2
    .parameter "value"
    .parameter "oldValue"

    .prologue
    const/high16 v1, 0x3f80

    .line 104
    iget v0, p0, Lcom/android/launcher2/DragView;->mScale:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/DragView;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/DragView;->mAnimationScale:F

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    .line 106
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    .line 117
    return-void
.end method

.method public show(Landroid/os/IBinder;II)V
    .locals 8
    .parameter "windowToken"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v1, -0x2

    .line 130
    const/4 v7, -0x3

    .line 132
    .local v7, pixelFormat:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int v3, p2, v2

    iget v2, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int v4, p3, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 142
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 144
    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iput-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 147
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/android/launcher2/DragView;->mScale:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/DragView;->mAnimationScale:F

    .line 150
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mTween:Lcom/android/launcher2/SymmetricalLinearTween;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SymmetricalLinearTween;->start(Z)V

    .line 151
    return-void
.end method
