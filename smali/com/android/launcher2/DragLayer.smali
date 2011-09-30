.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# instance fields
.field private OffsetUpdater:Ljava/lang/Runnable;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOffsetChanged:Z

.field private mOldOffsetX:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperPaint:Landroid/graphics/Paint;

.field private mWpHeight:I

.field private mWpOffsetX:F

.field private mWpOffsetY:F

.field private mWpScrolling:Z

.field private mWpStepX:F

.field private mWpStepY:F

.field private mWpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    .line 48
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    .line 49
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    .line 50
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    .line 51
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenHeight:I

    .line 52
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenWidth:I

    .line 53
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWpWidth:I

    .line 54
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWpHeight:I

    .line 55
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    .line 56
    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mOffsetChanged:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mWpScrolling:Z

    .line 150
    new-instance v0, Lcom/android/launcher2/DragLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragLayer$1;-><init>(Lcom/android/launcher2/DragLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    .line 73
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaperPaint:Landroid/graphics/Paint;

    .line 75
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaperPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 181
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mOffsetChanged:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mLeft:I

    iget v1, p0, Lcom/android/launcher2/DragLayer;->mTop:I

    iget v2, p0, Lcom/android/launcher2/DragLayer;->mRight:I

    iget v3, p0, Lcom/android/launcher2/DragLayer;->mBottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mOffsetChanged:Z

    .line 189
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    .line 79
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenHeight:I

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenWidth:I

    .line 105
    return-void
.end method

.method public updateWallpaper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_render_in_truecolor"

    sget-boolean v5, Landroid/os/Build;->IS_OLD_DEVICE:Z

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    .local v1, renderInTrueColor:Z
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, cfg:Ljava/lang/String;
    iput-boolean v7, p0, Lcom/android/launcher2/DragLayer;->mWpScrolling:Z

    .line 112
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    .line 121
    :goto_1
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-nez v3, :cond_5

    .line 122
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    .line 123
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/DragLayer;->mWpWidth:I

    .line 124
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/DragLayer;->mWpHeight:I

    .line 125
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    .line 132
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset()V

    .line 134
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 135
    .local v2, vp:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewRoot;

    if-eqz v3, :cond_0

    .line 136
    check-cast v2, Landroid/view/ViewRoot;

    .end local v2           #vp:Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewRoot;->DisableClearBackgroundForTransparent(Z)V

    .line 138
    :cond_0
    return-void

    .end local v0           #cfg:Ljava/lang/String;
    .end local v1           #renderInTrueColor:Z
    :cond_1
    move v5, v7

    .line 108
    goto :goto_0

    .line 114
    .restart local v0       #cfg:Ljava/lang/String;
    .restart local v1       #renderInTrueColor:Z
    :cond_2
    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    goto :goto_1

    .line 116
    :cond_3
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    goto :goto_1

    .line 119
    :cond_4
    iput-boolean v6, p0, Lcom/android/launcher2/DragLayer;->mWpScrolling:Z

    goto :goto_1

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    .line 129
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_6
    move v3, v7

    .line 136
    goto :goto_3
.end method

.method public updateWallpaperOffset()V
    .locals 5

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    iget v3, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    iget v4, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 173
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 167
    :cond_1
    iget v1, p0, Lcom/android/launcher2/DragLayer;->mWpWidth:I

    iget v2, p0, Lcom/android/launcher2/DragLayer;->mScreenWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 168
    .local v0, left:I
    iget v1, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    if-eq v1, v0, :cond_2

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/DragLayer;->mOffsetChanged:Z

    .line 171
    :cond_2
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    goto :goto_0
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mWpScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 142
    iput p1, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    .line 143
    iput p2, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    .line 144
    iput p3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    .line 145
    iput p4, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset()V

    .line 148
    :cond_0
    return-void
.end method
