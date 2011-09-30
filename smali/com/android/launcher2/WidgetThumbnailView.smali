.class public Lcom/android/launcher2/WidgetThumbnailView;
.super Lcom/android/launcher2/ThumbnailView;
.source "WidgetThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DragSource;


# instance fields
.field private mDragController:Lcom/android/launcher2/DragController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/android/launcher2/WidgetThumbnailView;->initWidgetThumbnailView()V

    .line 40
    invoke-virtual {p0, p0}, Lcom/android/launcher2/WidgetThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/WidgetThumbnailView;->setScreenGridSize(II)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetThumbnailView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/launcher2/WidgetThumbnailView;->setClipToPadding(Z)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/launcher2/WidgetThumbnailView;->setAnimationCacheEnabled(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method protected createScreen(Landroid/content/Context;IIII)Lcom/android/launcher2/ThumbnailScreen;
    .locals 7
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 55
    new-instance v0, Lcom/android/launcher2/ThumbnailScreen;

    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mRowCountPerScreen:I

    iget v3, p0, Lcom/android/launcher2/WidgetThumbnailView;->mColumnCountPerScreen:I

    iget v4, p0, Lcom/android/launcher2/WidgetThumbnailView;->mThumbnailWidth:I

    iget v5, p0, Lcom/android/launcher2/WidgetThumbnailView;->mThumbnailHeight:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/ThumbnailScreen;-><init>(Landroid/content/Context;IIIIZ)V

    .line 60
    .local v0, result:Lcom/android/launcher2/ThumbnailScreen;
    return-object v0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 2
    .parameter "target"
    .parameter "success"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 79
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetThumbnailView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 73
    .end local p0
    :goto_0
    return v1

    .line 67
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, dragInfo:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .end local v0           #dragInfo:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/launcher2/ItemInfo;->clone()Lcom/android/launcher2/ItemInfo;

    move-result-object v2

    sget v3, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 70
    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    iget-object p0, p0, Lcom/android/launcher2/WidgetThumbnailView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getTouchTranslator()Lcom/android/launcher2/DragController$TouchTranslator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 73
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    .line 84
    return-void
.end method
