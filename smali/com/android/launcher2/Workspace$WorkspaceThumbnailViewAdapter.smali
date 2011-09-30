.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.super Lcom/android/launcher2/ThumbnailViewAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceThumbnailViewAdapter"
.end annotation


# instance fields
.field private final DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

.field private final ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field private final EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field private final HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private final NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field private zDefaultScreenButton:Landroid/widget/ImageView;

.field private zNewScreenView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    .line 1500
    invoke-direct {p0, p2}, Lcom/android/launcher2/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 1406
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$1;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 1412
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 1434
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    .line 1441
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    .line 1462
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 1479
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 1513
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 1501
    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method private createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "source"
    .parameter "thumbnail"
    .parameter "bitmap"

    .prologue
    .line 1517
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 1519
    .local v2, thumbnailWidth:I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 1523
    .local v0, thumbnailHeight:I
    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1526
    .local v1, thumbnailScaleRatio:F
    if-nez p3, :cond_0

    .line 1527
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1535
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1536
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1537
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1538
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1539
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1540
    return-object p3

    .line 1532
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method private exitPreview(J)V
    .locals 3
    .parameter "screenID"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1402
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->setCurrentScreenById(J)V

    .line 1403
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 1404
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getExitAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getFocusedItemPosition()I
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1396
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1546
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 1547
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    if-nez v6, :cond_0

    .line 1548
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    .line 1549
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v7, 0x7f020084

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1550
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1552
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    .line 1606
    .end local p3
    :goto_0
    return-object v6

    .line 1555
    .restart local p3
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v2

    .line 1556
    .local v2, cs:Lcom/android/launcher2/CellScreen;
    invoke-virtual {v2}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 1558
    .local v1, cell:Lcom/android/launcher2/CellLayout;
    const/4 v5, 0x0

    .line 1559
    .local v5, thumbnail:Landroid/widget/ImageView;
    if-nez p2, :cond_5

    .line 1560
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030024

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1562
    const v6, 0x7f070052

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #thumbnail:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 1563
    .restart local v5       #thumbnail:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1564
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    const v6, 0x7f070053

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1568
    .local v4, homeButton:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1569
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 1573
    const v6, 0x7f070054

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1574
    .local v3, deleteButton:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1575
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1576
    const v6, 0x7f020005

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1577
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1584
    .end local v3           #deleteButton:Landroid/widget/ImageView;
    .end local v4           #homeButton:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v6

    if-ne p1, v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1588
    const v6, 0x7f070002

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellScreen;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1589
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    const v6, 0x7f070004

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellScreen;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1590
    :cond_3
    invoke-direct {p0, v2, v5, v0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1591
    const v6, 0x7f070002

    invoke-virtual {v2, v6, v0}, Lcom/android/launcher2/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 1592
    const v6, 0x7f070004

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher2/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 1595
    :cond_4
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1598
    const v6, 0x7f070053

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1599
    .restart local v4       #homeButton:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1700(Lcom/android/launcher2/Workspace;)I

    move-result v6

    if-ne p1, v6, :cond_7

    .line 1600
    iput-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    .line 1601
    const v6, 0x7f02004f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    move-object v6, p2

    .line 1606
    goto/16 :goto_0

    .line 1580
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #homeButton:Landroid/widget/ImageView;
    .restart local p3
    :cond_5
    const v6, 0x7f070052

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #thumbnail:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .restart local v5       #thumbnail:Landroid/widget/ImageView;
    goto :goto_1

    .line 1584
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    .line 1604
    .end local p3
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #homeButton:Landroid/widget/ImageView;
    :cond_7
    const v6, 0x7f02004e

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public onEndDragging()V
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1635
    return-void
.end method

.method public onStartDragging(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1628
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1631
    :cond_0
    return-void
.end method

.method public onThumbnailClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V

    .line 1611
    return-void
.end method

.method public onThumbnailPositionChanged([I)V
    .locals 5
    .parameter "positionMapping"

    .prologue
    const/4 v4, 0x1

    .line 1639
    array-length v0, p1

    .line 1641
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 1642
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    new-array v3, v0, [I

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1102(Lcom/android/launcher2/Workspace;[I)[I

    .line 1644
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1645
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    aget v3, p1, v1

    aput v3, v2, v1

    .line 1644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1648
    :cond_2
    sub-int v2, v0, v4

    aget v2, p1, v2

    sub-int v3, v0, v4

    if-eq v2, v3, :cond_3

    .line 1649
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1652
    :cond_3
    return-void
.end method
