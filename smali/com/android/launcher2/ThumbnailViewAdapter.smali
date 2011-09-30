.class public Lcom/android/launcher2/ThumbnailViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThumbnailViewAdapter.java"


# static fields
.field private static final DEFAULT_THUMBNAIL_BACKGROUND:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mSourceGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/launcher2/ThumbnailViewAdapter;->DEFAULT_THUMBNAIL_BACKGROUND:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/ThumbnailViewAdapter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailViewAdapter;->mSourceGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExitAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedItemPosition()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailViewAdapter;->mSourceGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, item:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 66
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/ThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v3, thumbnail:Landroid/widget/ImageView;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    sget-object v4, Lcom/android/launcher2/ThumbnailViewAdapter;->DEFAULT_THUMBNAIL_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    return-object v3
.end method

.method public onEndDragging()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onStartDragging(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 106
    return-void
.end method

.method public onThumbnailClick(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 75
    return-void
.end method

.method public onThumbnailPositionChanged([I)V
    .locals 0
    .parameter "positionMapping"

    .prologue
    .line 119
    return-void
.end method
