.class Lcom/android/launcher2/Background$DimAnimator;
.super Ljava/lang/Object;
.source "Background.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimator"
.end annotation


# instance fields
.field private mCurAlpha:I

.field private mDrawableFrom:Landroid/graphics/drawable/Drawable;

.field private mDrawableTo:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/launcher2/Background;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Background;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/launcher2/Background$DimAnimator;->this$0:Lcom/android/launcher2/Background;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Background;Lcom/android/launcher2/Background$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher2/Background$DimAnimator;-><init>(Lcom/android/launcher2/Background;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 59
    iget v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    add-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    .line 60
    iget v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    if-le v1, v3, :cond_5

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    .line 61
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->this$0:Lcom/android/launcher2/Background;

    invoke-virtual {v1}, Lcom/android/launcher2/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 69
    .local v0, c:Landroid/graphics/Canvas;
    if-eqz v0, :cond_4

    .line 70
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->this$0:Lcom/android/launcher2/Background;

    invoke-virtual {v1}, Lcom/android/launcher2/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 80
    :cond_4
    iget v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    if-ge v1, v3, :cond_6

    .line 81
    iget-object v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5a

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :goto_1
    return-void

    .line 60
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_5
    iget v1, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    goto :goto_0

    .line 83
    .restart local v0       #c:Landroid/graphics/Canvas;
    :cond_6
    iput-object v4, p0, Lcom/android/launcher2/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object v4, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object v4, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V
    .locals 1
    .parameter "dFrom"
    .parameter "dTo"
    .parameter "h"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/launcher2/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    if-nez p3, :cond_1

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object p2, p0, Lcom/android/launcher2/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object p3, p0, Lcom/android/launcher2/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Background$DimAnimator;->mCurAlpha:I

    goto :goto_0
.end method
