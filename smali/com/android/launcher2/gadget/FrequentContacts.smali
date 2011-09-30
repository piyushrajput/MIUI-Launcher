.class public Lcom/android/launcher2/gadget/FrequentContacts;
.super Landroid/widget/FrameLayout;
.source "FrequentContacts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/FrequentContacts$1;,
        Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LAYER_ALPHA_RATIO:[F

.field private static final LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final LAYER_RESOURCE_ID:[I

.field private static final LAYER_SCALE_RATIO:[F

.field private static final LAYER_TRANSLATE_RATIO:[F


# instance fields
.field private mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

.field private mContactId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactLookup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactPhotoId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCountPerPage:I

.field private mCurrentPageIndex:I

.field private mLastDownY:F

.field private mLastPageIndex:I

.field private mLightEffect:Landroid/widget/ImageView;

.field private mNextPageIndex:I

.field private mOptionEdit:Landroid/widget/TextView;

.field private mOptionStyle:Landroid/widget/TextView;

.field private mOptions:Landroid/view/View;

.field private mPageBorderSize:I

.field private mPageContentSize:I

.field private mPageIndexOfOption:I

.field private mPageItemSize:I

.field private mPageSize:I

.field private mPages:[Landroid/widget/FrameLayout;

.field private mPhotoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotateDownAnimations:[Landroid/view/animation/Animation;

.field private mRotateUpAnimations:[Landroid/view/animation/Animation;

.field private mStyle:I

.field private mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 66
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 70
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    .line 71
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    .line 72
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_RESOURCE_ID:[I

    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 70
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x8t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 71
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x9dt 0x43t
        0x0t 0x0t 0xb0t 0x43t
        0x0t 0x0t 0xc5t 0x43t
        0x0t 0x0t 0xdbt 0x43t
    .end array-data

    .line 72
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xc3t 0xf5t 0xa8t 0x3et
        0xc3t 0xf5t 0x28t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_3
    .array-data 0x4
        0x3at 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    iget v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    .line 98
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 107
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    .line 108
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    .line 109
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    .line 768
    new-instance v1, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;-><init>(Lcom/android/launcher2/gadget/FrequentContacts;Lcom/android/launcher2/gadget/FrequentContacts$1;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->setupViews()V

    .line 127
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->prepareAnimations()V

    .line 128
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->reloadContacts()V

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 131
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mTouchSlop:F

    .line 132
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/gadget/FrequentContacts;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/gadget/FrequentContacts;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/gadget/FrequentContacts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FrequentContacts;->setCurrentPage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/gadget/FrequentContacts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    return-void
.end method

.method private generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;
    .locals 17
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "pivot"
    .parameter "fromTranslate"
    .parameter "toTranslate"

    .prologue
    .line 252
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 253
    .local v14, alpha:Landroid/view/animation/AlphaAnimation;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 256
    .local v5, scale:Landroid/view/animation/ScaleAnimation;
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v6

    move v2, v7

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 258
    .local v16, translate:Landroid/view/animation/TranslateAnimation;
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 259
    .local v15, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 260
    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    invoke-virtual/range {v15 .. v16}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 262
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    const-wide/16 v6, 0x12c

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 264
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 266
    return-object v15
.end method

.method private generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;
    .locals 17
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "pivot"
    .parameter "fromTranslate"
    .parameter "toTranslate"

    .prologue
    .line 273
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 274
    .local v14, alpha:Landroid/view/animation/AlphaAnimation;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 277
    .local v5, scale:Landroid/view/animation/ScaleAnimation;
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v6

    move v2, v7

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 279
    .local v16, translate:Landroid/view/animation/TranslateAnimation;
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 280
    .local v15, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 281
    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 282
    invoke-virtual/range {v15 .. v16}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 283
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
    const-wide/16 v6, 0x12c

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 285
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 287
    return-object v15
.end method

.method private loadContactPhoto(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "photoId"

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, photo:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->loadDefaultPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 660
    .local v1, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 661
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->loadContactPhotoFromDatabase(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 662
    if-nez v0, :cond_2

    .line 663
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->loadDefaultPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 666
    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 667
    .restart local v1       #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 670
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #photo:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #photo:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private loadContactPhotoFromDatabase(J)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "photoId"

    .prologue
    .line 678
    const/4 v7, 0x0

    .line 679
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 682
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 687
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 689
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 692
    .end local v8           #photoData:[B
    :cond_0
    if-eqz v7, :cond_1

    .line 693
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_1
    return-object v6

    .line 692
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 693
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loadDefaultPhoto()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 641
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 642
    .local v1, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803b5

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 646
    .local v0, photo:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 647
    .restart local v1       #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .end local v0           #photo:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private prepareAnimations()V
    .locals 12

    .prologue
    .line 187
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    .line 188
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    .line 192
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/4 v0, 0x3

    if-ge v9, v0, :cond_0

    .line 193
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v10, v9, 0x2

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    add-int/lit8 v1, v9, 0x1

    aget v1, v0, v1

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v2, v0, v9

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v3, v9, 0x1

    aget v0, v0, v3

    sget-object v3, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    aget v3, v3, v9

    div-float v3, v0, v3

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    add-int/lit8 v6, v9, 0x1

    aget v0, v0, v6

    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v6, v6, v9

    sub-float v6, v0, v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 192
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v9, v0, :cond_1

    .line 201
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v10, v9, 0x2

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v1, v0, v9

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    add-int/lit8 v2, v9, 0x1

    aget v2, v0, v2

    const/high16 v3, 0x3f80

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v4, v9, 0x1

    aget v0, v0, v4

    sget-object v4, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    aget v4, v4, v9

    div-float v4, v0, v4

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    add-int/lit8 v7, v9, 0x1

    aget v0, v0, v7

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v7, v7, v9

    sub-float v7, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 200
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 208
    :cond_1
    const/4 v9, 0x0

    :goto_2
    const/4 v0, 0x3

    if-ge v9, v0, :cond_2

    .line 209
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v10, v0, 0x1

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v1, v0, v9

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    add-int/lit8 v2, v9, 0x1

    aget v2, v0, v2

    const/high16 v3, 0x3f80

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v4, v9, 0x1

    aget v0, v0, v4

    sget-object v4, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    aget v4, v4, v9

    div-float v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    add-int/lit8 v7, v9, 0x1

    aget v0, v0, v7

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v7, v7, v9

    sub-float/2addr v0, v7

    neg-float v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 208
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 216
    :cond_2
    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x3

    if-ge v9, v0, :cond_3

    .line 217
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v10, v0, 0x1

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    add-int/lit8 v1, v9, 0x1

    aget v1, v0, v1

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v2, v0, v9

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v3, v9, 0x1

    aget v0, v0, v3

    sget-object v3, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    aget v3, v3, v9

    div-float v3, v0, v3

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    add-int/lit8 v6, v9, 0x1

    aget v0, v0, v6

    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v6, v6, v9

    sub-float/2addr v0, v6

    neg-float v6, v0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 216
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 224
    :cond_3
    const/4 v9, 0x3

    .line 225
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    const/4 v1, 0x1

    sub-int v1, v9, v1

    aget v0, v0, v1

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    aget v1, v1, v9

    div-float v4, v0, v1

    .line 226
    .local v4, scaleRatio:F
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v10, v9, 0x2

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v0, v0, v9

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    const/4 v11, 0x1

    sub-int v11, v9, v11

    aget v7, v7, v11

    sub-float/2addr v0, v7

    neg-float v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 230
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v10, v9, 0x2

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v2, v1, v9

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v1, v1, v9

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    const/4 v8, 0x1

    sub-int v8, v9, v8

    aget v7, v7, v8

    sub-float/2addr v1, v7

    neg-float v7, v1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v1

    aput-object v1, v0, v10

    .line 234
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v1, v9, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v1, v9, 0x2

    add-int/lit8 v10, v1, 0x1

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v2, v1, v9

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    int-to-float v6, v1

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v1, v1, v9

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    const/4 v8, 0x1

    sub-int v8, v9, v8

    aget v7, v7, v8

    sub-float v7, v1, v7

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v1

    aput-object v1, v0, v10

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v1, v9, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 242
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v10, v0, 0x1

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    int-to-float v5, v0

    const/4 v6, 0x0

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v0, v0, v9

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    aget v7, v7, v9

    .end local v9           #i:I
    sub-float v7, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 246
    return-void
.end method

.method private queryPrimaryPhoneNumber(J)Ljava/lang/String;
    .locals 11
    .parameter "contactId"

    .prologue
    .line 701
    const/4 v7, 0x0

    .line 704
    .local v7, phone:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 705
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 707
    .local v1, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 712
    .local v9, phonesCursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    move-object v8, v7

    .line 739
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v7           #phone:Ljava/lang/String;
    .local v8, phone:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 717
    .end local v8           #phone:Ljava/lang/String;
    .restart local v1       #dataUri:Landroid/net/Uri;
    .restart local v7       #phone:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 719
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 720
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 721
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 724
    .end local v1           #dataUri:Landroid/net/Uri;
    .local v10, type:I
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 737
    .end local v10           #type:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 739
    .end local v7           #phone:Ljava/lang/String;
    .restart local v8       #phone:Ljava/lang/String;
    goto :goto_0

    .line 730
    .end local v8           #phone:Ljava/lang/String;
    .restart local v7       #phone:Ljava/lang/String;
    .restart local v10       #type:I
    :cond_3
    const/4 v0, 0x2

    if-eq v10, v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 732
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 733
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto :goto_1
.end method

.method private rebindContactPage(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 597
    if-ltz p1, :cond_0

    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    if-le p1, v8, :cond_1

    .line 638
    :cond_0
    return-void

    .line 599
    :cond_1
    rem-int/lit8 v5, p1, 0x3

    .line 600
    .local v5, pageIndex:I
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v4, v8, v5

    .line 602
    .local v4, page:Landroid/widget/FrameLayout;
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    if-ne v8, v5, :cond_2

    .line 603
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 604
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 607
    :cond_2
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    mul-int v2, p1, v8

    .line 608
    .local v2, itemIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    if-ge v0, v8, :cond_0

    .line 609
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 610
    .local v1, item:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 612
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 613
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-direct {p0, v8}, Lcom/android/launcher2/gadget/FrequentContacts;->loadContactPhoto(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    const v8, 0x7f070006

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 618
    .local v3, name:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    .end local v3           #name:Landroid/widget/TextView;
    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v2, v8, :cond_4

    .line 626
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    if-ltz v8, :cond_3

    .line 627
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 628
    .local v7, parent:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 631
    iput v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 633
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 634
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    rem-int v9, v0, v9

    mul-int/2addr v8, v9

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 635
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    div-int v9, v0, v9

    mul-int/2addr v8, v9

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 608
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 621
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private reloadContacts()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    const/4 v6, 0x0

    .line 570
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "display_name"

    aput-object v3, v2, v7

    const-string v3, "photo_id"

    aput-object v3, v2, v9

    const-string v3, "lookup"

    aput-object v3, v2, v10

    const-string v3, "starred=1"

    const/4 v4, 0x0

    const-string v5, "times_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 576
    if-eqz v6, :cond_1

    .line 577
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    .line 590
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->setCurrentPage(I)V

    .line 591
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 592
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 593
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    sub-int/2addr v0, v7

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 594
    return-void
.end method

.method private rotateToNextPage()V
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    if-ne v0, v1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    .line 423
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->startRotateAnimation(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private rotateToPreviousPage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 413
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    .line 416
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->startRotateAnimation(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private setCurrentPage(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 427
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 428
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    if-ne v3, p1, :cond_1

    .line 450
    :cond_0
    return-void

    .line 430
    :cond_1
    iput p1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    .line 433
    sub-int v3, v6, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 434
    .local v2, upperVisibleIndex:I
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    sub-int/2addr v3, p1

    sub-int v3, v6, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 435
    .local v1, lowerVisibleIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 436
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ge v0, v2, :cond_2

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 437
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ge v0, v1, :cond_3

    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 436
    goto :goto_1

    :cond_3
    move v4, v5

    .line 437
    goto :goto_2

    .line 441
    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_0

    .line 442
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    rem-int/lit8 v3, v3, 0x3

    if-ne v3, v0, :cond_5

    .line 443
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 441
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 446
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 447
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private setStyle(I)V
    .locals 14
    .parameter "style"

    .prologue
    .line 486
    const/4 v9, 0x2

    if-eq p1, v9, :cond_0

    const/4 v9, 0x3

    if-eq p1, v9, :cond_0

    .line 487
    const/4 p1, 0x2

    .line 490
    :cond_0
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    if-ne v9, p1, :cond_1

    .line 560
    .end local p0
    .end local p1
    :goto_0
    return-void

    .line 493
    .restart local p0
    .restart local p1
    :cond_1
    iput p1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    .line 494
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 495
    .local v7, pref:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 496
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "gadget_contact_style_preference"

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    mul-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    .line 500
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    .line 501
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    .line 505
    const/4 v5, 0x0

    .local v5, pageIndex:I
    :goto_1
    const/4 v9, 0x3

    if-ge v5, v9, :cond_3

    .line 506
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 507
    const/4 v3, 0x0

    .local v3, itemIndex:I
    :goto_2
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    if-ge v3, v9, :cond_2

    .line 508
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    const v10, 0x7f03000c

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/launcher2/gadget/FrequentContacts;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 509
    .local v2, item:Landroid/widget/FrameLayout;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 510
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v5

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 513
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 514
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 515
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 516
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    rem-int v10, v3, v10

    mul-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 517
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    div-int v10, v3, v10

    mul-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 518
    const/16 v9, 0x33

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 520
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 521
    .local v4, name:Landroid/widget/TextView;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 522
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 523
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v9, v9, 0x14

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v11, v11, 0x14

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 526
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 527
    .restart local v6       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v9, v9, 0x4

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 530
    .end local v2           #item:Landroid/widget/FrameLayout;
    .end local v4           #name:Landroid/widget/TextView;
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    new-instance v1, Landroid/view/View;

    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 531
    .local v1, frame:Landroid/view/View;
    const v9, 0x7f020037

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 532
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v5

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 533
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 534
    .restart local v6       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 535
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 536
    const/16 v9, 0x11

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 540
    .end local v1           #frame:Landroid/view/View;
    .end local v3           #itemIndex:I
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 541
    .restart local v6       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 542
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 544
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v8, v9, 0x14

    .line 545
    .local v8, widthMargin:I
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 546
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const v10, 0x7f02002e

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 551
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v10, v10, 0x9

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 552
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v9, v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 553
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const v10, 0x7f020038

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 558
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v10, v10, 0x9

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 559
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 546
    .restart local p0
    .restart local p1
    :cond_4
    const v10, 0x7f02002f

    goto :goto_3

    .line 553
    .end local p1
    :cond_5
    const v10, 0x7f020039

    goto :goto_4
.end method

.method private setupViews()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x1

    .line 135
    invoke-virtual {p0, v9}, Lcom/android/launcher2/gadget/FrequentContacts;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v0, v6, :cond_0

    .line 139
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, layer:Landroid/widget/ImageView;
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_RESOURCE_ID:[I

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    const/high16 v6, 0x437f

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    div-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 142
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher2/gadget/FrequentContacts;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 149
    .local v3, pageBackground:Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 150
    .local v2, padding:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 151
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageBorderSize:I

    .line 152
    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    .line 153
    iget v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageBorderSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    .line 156
    new-array v6, v12, [Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    .line 157
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_1

    .line 158
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v0

    .line 159
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 161
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 162
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/gadget/FrequentContacts;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_1
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    .line 167
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    const v7, 0x7f020031

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/gadget/FrequentContacts;->addView(Landroid/view/View;)V

    .line 169
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 171
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 174
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    const v7, 0x7f03000d

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/launcher2/gadget/FrequentContacts;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x33

    invoke-direct {v7, v11, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    const v7, 0x7f07001a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    .line 177
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    const v7, 0x7f07001b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    .line 179
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 183
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string v6, "gadget_contact_style_preference"

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/gadget/FrequentContacts;->setStyle(I)V

    .line 184
    return-void
.end method

.method private startRotateAnimation(Ljava/lang/Boolean;)V
    .locals 11
    .parameter "down"

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 453
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    :goto_0
    sub-int v4, v7, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 454
    .local v3, upperVisibleIndex:I
    iget v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    :goto_1
    sub-int/2addr v4, v5

    sub-int v4, v7, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 457
    .local v2, lowerVisibleIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v7, :cond_6

    .line 458
    if-lt v0, v3, :cond_0

    .line 459
    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 460
    .local v1, layer:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 462
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 465
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_0
    if-lt v0, v2, :cond_1

    .line 466
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 467
    .restart local v1       #layer:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 469
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 457
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 453
    .end local v0           #i:I
    .end local v2           #lowerVisibleIndex:I
    .end local v3           #upperVisibleIndex:I
    :cond_2
    iget v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    goto :goto_0

    .line 454
    .restart local v3       #upperVisibleIndex:I
    :cond_3
    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    goto :goto_1

    .line 462
    .restart local v0       #i:I
    .restart local v1       #layer:Landroid/widget/ImageView;
    .restart local v2       #lowerVisibleIndex:I
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    goto :goto_3

    .line 469
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    goto :goto_4

    .line 474
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 475
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    aget-object v5, v5, v9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 480
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    aget-object v5, v5, v8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 483
    return-void

    .line 475
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    aget-object v5, v5, v8

    goto :goto_5

    .line 480
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    aget-object v5, v5, v9

    goto :goto_6
.end method


# virtual methods
.method onCall(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->queryPrimaryPhoneNumber(J)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, phoneNumber:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 403
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 377
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->onView(I)V

    goto :goto_0

    .line 381
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->onCall(I)V

    goto :goto_0

    .line 385
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.PICK_FAVORITE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->setStyle(I)V

    .line 391
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->setCurrentPage(I)V

    .line 392
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 393
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 390
    goto :goto_1

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_1
        0x7f070019 -> :sswitch_0
        0x7f07001a -> :sswitch_2
        0x7f07001b -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 816
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 339
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateIfNeeded(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    goto :goto_1

    .line 346
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastDownY:F

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 292
    sub-int v6, p4, p2

    .line 293
    .local v6, width:I
    sub-int v7, p5, p3

    const/16 v8, 0x32

    sub-int v0, v7, v8

    .line 295
    .local v0, height:I
    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    sub-int v7, v6, v7

    div-int/lit8 v4, v7, 0x2

    .line 296
    .local v4, paddingWidth:I
    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    sub-int v7, v0, v7

    div-int/lit8 v3, v7, 0x2

    .line 299
    .local v3, paddingHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v7, 0x3

    if-ge v1, v7, :cond_0

    .line 300
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v7, v7, v1

    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v9, v3, 0x0

    sub-int v10, v6, v4

    add-int/lit8 v11, v3, 0x0

    iget-object v12, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v1

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageBorderSize:I

    add-int/2addr v3, v7

    .line 309
    const/4 v1, 0x2

    :goto_1
    if-ltz v1, :cond_1

    .line 310
    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 311
    .local v5, upperLayer:Landroid/view/View;
    add-int/lit8 v7, v4, 0x0

    add-int/lit8 v8, v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v9, v6, v4

    add-int/lit8 v10, v3, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 317
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 318
    .local v2, lowerLayer:Landroid/view/View;
    add-int/lit8 v7, v4, 0x0

    sub-int v8, v0, v3

    sub-int v9, v6, v4

    sub-int v10, v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 309
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 326
    .end local v2           #lowerLayer:Landroid/view/View;
    .end local v5           #upperLayer:Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v4, v7, 0x2

    .line 327
    const/4 v3, 0x0

    .line 328
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v0, v8

    sub-int/2addr v8, v3

    sub-int v9, v6, v4

    sub-int v10, v0, v3

    invoke-virtual {v7, v4, v8, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 333
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->reloadContacts()V

    .line 782
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 794
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 800
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateIfNeeded(F)Z

    .line 371
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method onView(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 406
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, lookupKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 408
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 409
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method public rotateIfNeeded(F)Z
    .locals 2
    .parameter "currentY"

    .prologue
    .line 354
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastDownY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mTouchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 355
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastDownY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateToPreviousPage()V

    .line 361
    :goto_0
    const/4 v0, 0x1

    .line 363
    :goto_1
    return v0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateToNextPage()V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 805
    return-void
.end method
