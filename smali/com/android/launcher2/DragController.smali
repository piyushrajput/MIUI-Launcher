.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DisableTouchTranslate;,
        Lcom/android/launcher2/DragController$TouchTranslator;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragInfo:Lcom/android/launcher2/ItemInfo;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragSource:Lcom/android/launcher2/DragSource;

.field private mDragView:Lcom/android/launcher2/DragView;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mListener:Lcom/android/launcher2/DragController$DragListener;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mSecondaryPointerId:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

.field private mTransloateXY:[F

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 62
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 101
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    .line 114
    new-instance v0, Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    .line 156
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    .line 157
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method private static clamp(III)I
    .locals 1
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 629
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 634
    :goto_0
    return v0

    .line 631
    :cond_0
    if-lt p0, p2, :cond_1

    .line 632
    const/4 v0, 0x1

    sub-int v0, p2, v0

    goto :goto_0

    :cond_1
    move v0, p0

    .line 634
    goto :goto_0
.end method

.method private drop(FF)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 532
    iget-object v8, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 533
    .local v8, coordinates:[I
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {p0, v0, v1, v8}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v9

    .line 535
    .local v9, dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v9, v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 539
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 541
    if-eqz v9, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v0, 0x0

    aget v2, v8, v0

    const/4 v0, 0x1

    aget v3, v8, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v0, v9

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 544
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v0, 0x0

    aget v2, v8, v0

    const/4 v0, 0x1

    aget v3, v8, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v0, v9

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v0, 0x0

    aget v2, v8, v0

    const/4 v0, 0x1

    aget v3, v8, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v0, v9

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v10

    .line 548
    .local v10, success:Z
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    check-cast v9, Landroid/view/View;

    .end local v9           #dropTarget:Lcom/android/launcher2/DropTarget;
    invoke-interface {v0, v9, v10}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 555
    .end local v10           #success:Z
    :goto_0
    return-void

    .line 553
    .restart local v9       #dropTarget:Lcom/android/launcher2/DropTarget;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    check-cast v9, Landroid/view/View;

    .end local v9           #dropTarget:Lcom/android/launcher2/DropTarget;
    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    goto :goto_0
.end method

.method private endDrag()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 338
    iput-object v8, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    invoke-interface {v0, v8, v2}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 345
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    invoke-interface {v0}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->remove()V

    .line 354
    iput-object v8, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    .line 358
    :cond_4
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getEditingState()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 359
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 361
    :cond_5
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 578
    move/from16 v10, p1

    .line 579
    .local v10, tx:I
    move/from16 v11, p2

    .line 580
    .local v11, ty:I
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

    if-eqz v12, :cond_0

    .line 581
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v13, 0x0

    move/from16 v0, p1

    int-to-float v0, v0

    move v14, v0

    aput v14, v12, v13

    .line 582
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v13, 0x1

    move/from16 v0, p2

    int-to-float v0, v0

    move v14, v0

    aput v14, v12, v13

    .line 583
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

    iget-object v13, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    invoke-interface {v12, v13}, Lcom/android/launcher2/DragController$TouchTranslator;->translateTouch([F)V

    .line 584
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-int v10, v12

    .line 585
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    float-to-int v11, v12

    .line 588
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 589
    .local v7, r:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 590
    .local v3, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 591
    .local v2, count:I
    const/4 v12, 0x1

    sub-int v6, v2, v12

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_4

    .line 592
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/DropTarget;

    .line 594
    .local v8, target:Lcom/android/launcher2/DropTarget;
    move-object v0, v8

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    .line 595
    .local v9, targetView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isShown()Z

    move-result v12

    if-nez v12, :cond_2

    .line 591
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 598
    :cond_2
    invoke-interface {v8, v7}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 599
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->getLocationOnScreen([I)V

    .line 600
    const/4 v12, 0x0

    aget v12, p3, v12

    invoke-interface {v8}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aget v13, p3, v13

    invoke-interface {v8}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 601
    move/from16 v4, p1

    .line 602
    .local v4, hitX:I
    move/from16 v5, p2

    .line 603
    .local v5, hitY:I
    iget-object v12, p0, Lcom/android/launcher2/DragController;->mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

    if-eqz v12, :cond_3

    instance-of v12, v8, Lcom/android/launcher2/DragController$DisableTouchTranslate;

    if-nez v12, :cond_3

    .line 604
    move v4, v10

    .line 605
    move v5, v11

    .line 607
    :cond_3
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 608
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, p3, v13

    sub-int v13, v4, v13

    aput v13, p3, v12

    .line 609
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget v13, p3, v13

    sub-int v13, v5, v13

    aput v13, p3, v12

    move-object v12, v8

    .line 613
    .end local v4           #hitX:I
    .end local v5           #hitY:I
    .end local v8           #target:Lcom/android/launcher2/DropTarget;
    .end local v9           #targetView:Landroid/view/View;
    :goto_1
    return-object v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 280
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 283
    .local v3, willNotCache:Z
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 288
    .local v2, color:I
    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 295
    const-string v4, "Launcher.DragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed getViewBitmap("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    const/4 v4, 0x0

    .line 310
    :goto_0
    return-object v4

    .line 299
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 304
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 306
    :cond_2
    if-eqz v2, :cond_3

    .line 307
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_3
    move-object v4, v0

    .line 310
    goto :goto_0
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 623
    return-void
.end method

.method private validateDropTargets()V
    .locals 8

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 559
    .local v2, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 560
    .local v1, count:I
    const/4 v7, 0x1

    sub-int v3, v1, v7

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 561
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/DropTarget;

    .line 564
    .local v4, target:Lcom/android/launcher2/DropTarget;
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 565
    .local v5, targetView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 566
    .local v6, viewParent:Landroid/view/ViewParent;
    :goto_1
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_0

    .line 567
    check-cast v6, Landroid/view/View;

    .end local v6           #viewParent:Landroid/view/ViewParent;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .restart local v6       #viewParent:Landroid/view/ViewParent;
    goto :goto_1

    .line 571
    :cond_0
    instance-of v7, v6, Landroid/view/ViewRoot;

    if-nez v7, :cond_1

    .line 572
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 560
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 575
    .end local v4           #target:Lcom/android/launcher2/DropTarget;
    .end local v5           #targetView:Landroid/view/View;
    .end local v6           #viewParent:Landroid/view/ViewParent;
    :cond_2
    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    .line 332
    return-void
.end method

.method public clearLastDragInfo()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    .line 163
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastDragInfo()Lcom/android/launcher2/ItemInfo;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 369
    .local v0, action:I
    if-nez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->recordScreenSize()V

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v1

    .line 374
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v2

    .line 376
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    .line 399
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v3

    .line 382
    :pswitch_1
    int-to-float v3, v1

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 383
    int-to-float v3, v2

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 384
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    goto :goto_0

    .line 388
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_0

    .line 392
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v3, :cond_1

    .line 393
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 419
    .local v19, scrollView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 420
    const/4 v5, 0x0

    .line 528
    :goto_0
    return v5

    .line 423
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 425
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v7, v0

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v6, v7}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v17

    .line 426
    .local v17, screenX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v7, v0

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6, v7}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v18

    .line 428
    .local v18, screenY:I
    and-int/lit16 v5, v13, 0xff

    packed-switch v5, :pswitch_data_0

    .line 528
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    .line 430
    :pswitch_1
    const v5, 0xff00

    and-int/2addr v5, v13

    shr-int/lit8 v16, v5, 0x8

    .line 431
    .local v16, index:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/DragScroller;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 436
    .end local v16           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v5, v0

    if-ltz v5, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/DragScroller;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    .line 438
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    goto :goto_1

    .line 443
    :pswitch_3
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 444
    move/from16 v0, v18

    int-to-float v0, v0

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 446
    const/16 v5, 0x14

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v5

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_3

    .line 447
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 450
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    goto/16 :goto_1

    .line 457
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/DragView;->move(II)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    move-object v14, v0

    .line 461
    .local v14, coordinates:[I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v4

    .line 462
    .local v4, dropTarget:Lcom/android/launcher2/DropTarget;
    if-eqz v4, :cond_8

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    if-ne v5, v4, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v5, v0

    const/4 v6, 0x0

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    move v8, v0

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v11, v0

    invoke-interface/range {v4 .. v11}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 480
    :cond_4
    :goto_2
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 483
    const/4 v15, 0x0

    .line 484
    .local v15, inDeleteRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    move-object v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v15

    .line 487
    :cond_5
    if-nez v15, :cond_9

    const/16 v5, 0x14

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mScrollState:I

    move v5, v0

    if-nez v5, :cond_1

    .line 489
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 467
    .end local v15           #inDeleteRegion:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v12, v0

    invoke-interface/range {v5 .. v12}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 471
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v5, v0

    const/4 v6, 0x0

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    move v8, v0

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v11, v0

    invoke-interface/range {v4 .. v11}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    goto/16 :goto_2

    .line 475
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v12, v0

    invoke-interface/range {v5 .. v12}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    goto/16 :goto_2

    .line 493
    .restart local v15       #inDeleteRegion:Z
    :cond_9
    if-nez v15, :cond_a

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v5

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_a

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mScrollState:I

    move v5, v0

    if-nez v5, :cond_1

    .line 495
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 499
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mScrollState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 500
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 503
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v5, v0

    if-lez v5, :cond_1

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-lez v5, :cond_c

    .line 507
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v6, v0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    move v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/DragScroller;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1

    .line 511
    :cond_c
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    goto/16 :goto_1

    .line 517
    .end local v4           #dropTarget:Lcom/android/launcher2/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #inDeleteRegion:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 519
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 521
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto/16 :goto_1

    .line 525
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto/16 :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public setDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    .line 651
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    .line 640
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    .line 407
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    .line 683
    return-void
.end method

.method public setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

    .line 655
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 644
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IIIIIILcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V
    .locals 15
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "textureLeft"
    .parameter "textureTop"
    .parameter "textureWidth"
    .parameter "textureHeight"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->validateDropTargets()V

    .line 235
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 240
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_1

    .line 241
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    if-eqz v5, :cond_2

    .line 247
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    move-object v0, v5

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p10

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 249
    :cond_2
    iget v13, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 250
    .local v13, motionX:F
    iget v14, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 251
    .local v14, motionY:F
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

    if-eqz v5, :cond_3

    .line 252
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    aput v7, v5, v6

    .line 253
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    aput v7, v5, v6

    .line 254
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mTouchTranslater:Lcom/android/launcher2/DragController$TouchTranslator;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    invoke-interface {v5, v6}, Lcom/android/launcher2/DragController$TouchTranslator;->translateTouch([F)V

    .line 255
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v6, 0x0

    aget v13, v5, v6

    .line 256
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mTransloateXY:[F

    const/4 v6, 0x1

    aget v14, v5, v6

    .line 258
    :cond_3
    float-to-int v5, v13

    sub-int v7, v5, p2

    .line 259
    .local v7, registrationX:I
    float-to-int v5, v14

    sub-int v8, v5, p3

    .line 261
    .local v8, registrationY:I
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    sub-float v5, v13, v5

    iput v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    .line 262
    move/from16 v0, p3

    int-to-float v0, v0

    move v5, v0

    sub-float v5, v14, v5

    iput v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    .line 264
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 265
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    .line 266
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    .line 268
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v9, 0x23

    invoke-virtual {v5, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 270
    new-instance v4, Lcom/android/launcher2/DragView;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    move-object/from16 v6, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v4, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    .line 272
    .local v4, dragView:Lcom/android/launcher2/DragView;
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .end local v7           #registrationX:I
    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/DragView;->show(Landroid/os/IBinder;II)V

    .line 273
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V
    .locals 14
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 179
    iget-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 185
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 190
    iget-object v13, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 191
    .local v13, loc:[I
    invoke-virtual {p1, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    const/4 v2, 0x0

    aget v4, v13, v2

    .line 193
    .local v4, screenX:I
    const/4 v2, 0x1

    aget v5, v13, v2

    .line 195
    .local v5, screenY:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v2, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IIIIIILcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 198
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_0

    .line 201
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
