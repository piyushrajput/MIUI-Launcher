.class public Lcom/android/launcher2/DeleteZone;
.super Landroid/widget/FrameLayout;
.source "DeleteZone.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/launcher2/DragController$DisableTouchTranslate;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mEditingTips:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mShrinkToTop:Landroid/view/animation/Animation;

.field private mStretchFromTop:Landroid/view/animation/Animation;

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mTrashIcon:Landroid/widget/ImageView;

.field private final mTrashPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    .line 60
    iput-boolean v4, p0, Lcom/android/launcher2/DeleteZone;->mErrorShowing:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 70
    .local v0, srcColor:I
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 71
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    invoke-virtual {p0, v4}, Lcom/android/launcher2/DeleteZone;->setAnimationCacheEnabled(Z)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeleteZone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DeleteZone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 238
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 241
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v1, v3

    .line 238
    goto :goto_0

    .line 239
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    move v1, v3

    .line 241
    goto :goto_0
.end method

.method private startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0025

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 186
    new-instance v1, Lcom/android/launcher2/DeleteZone$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/DeleteZone$1;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/DeleteZone$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/DeleteZone$2;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/DeleteZone$3;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/DeleteZone$3;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 206
    return-void
.end method

.method private startUninstallWidgetDialog(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 209
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 211
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 213
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    if-nez v0, :cond_0

    .line 233
    :goto_1
    return-void

    .line 219
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 220
    .local v2, label:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 223
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0025

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 225
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/DeleteZone$4;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/DeleteZone$4;-><init>(Lcom/android/launcher2/DeleteZone;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 214
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #label:Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 92
    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 316
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 307
    return-void
.end method

.method public onDragEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mFadeIn:Landroid/view/animation/Animation;

    iget-boolean v1, p0, Lcom/android/launcher2/DeleteZone;->mErrorShowing:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 284
    iput-boolean v3, p0, Lcom/android/launcher2/DeleteZone;->mErrorShowing:Z

    .line 285
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    return-void

    .line 282
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher2/DeleteZone;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 260
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher2/DeleteZone;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 263
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 256
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V
    .locals 3
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v2, 0x4

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mStretchFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 278
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 98
    const/4 v3, 0x1

    .line 100
    .local v3, deleteSuccess:Z
    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v10, v0

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v10, v0

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    .line 101
    const/4 v10, 0x1

    .line 177
    .end local p7
    :goto_0
    return v10

    .line 103
    .restart local p7
    :cond_0
    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v10, v0

    const-wide/16 v12, -0x64

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 104
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move v10, v0

    if-eqz v10, :cond_1

    .line 105
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v2, v0

    invoke-virtual {v10, v2}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 109
    :cond_1
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 110
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v9, v0

    .line 111
    .local v9, userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    invoke-virtual {v9}, Lcom/android/launcher2/UserFolderInfo;->count()I

    move-result v10

    if-nez v10, :cond_5

    .line 112
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)Z

    move-result v3

    .line 113
    if-eqz v3, :cond_2

    .line 114
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v10, v9}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 128
    .end local v9           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_2
    :goto_1
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v10, v0

    if-nez v10, :cond_a

    .line 129
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v4, v0

    .line 130
    .local v4, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_3

    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_7

    .line 131
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v10

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    .line 165
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_2
    instance-of v10, p1, Lcom/android/launcher2/UserFolder;

    if-eqz v10, :cond_4

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/UserFolder;

    move-object v8, v0

    .line 167
    .local v8, userFolder:Lcom/android/launcher2/UserFolder;
    invoke-virtual {v8}, Lcom/android/launcher2/UserFolder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/UserFolderInfo;

    .line 170
    .restart local v9       #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    check-cast p7, Lcom/android/launcher2/ShortcutInfo;

    .end local p7
    move-object v0, v9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 172
    .end local v8           #userFolder:Lcom/android/launcher2/UserFolder;
    .end local v9           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_4
    if-nez v3, :cond_e

    .line 173
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    const v11, 0x7f0a002b

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 174
    const/4 v10, 0x0

    goto :goto_0

    .line 117
    .restart local v9       #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    .restart local p7
    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    const v11, 0x7f0a0027

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 118
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 120
    .end local v9           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_6
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v10, v0

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 121
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v5, v0

    .line 122
    .local v5, launcherAppWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    .line 123
    .local v2, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v2, :cond_2

    .line 124
    iget v10, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v10}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1

    .line 133
    .end local v2           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v5           #launcherAppWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .restart local v4       #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 134
    .local v7, pm:Landroid/content/pm/PackageManager;
    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-nez v10, :cond_8

    .line 136
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    goto :goto_2

    .line 138
    :cond_8
    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher2/DeleteZone;->isSystemPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 140
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    const v11, 0x7f0a0024

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 141
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 143
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/launcher2/DeleteZone;->startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_2

    .line 147
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_a
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v10, v0

    const/4 v11, 0x6

    if-ne v10, v11, :cond_c

    .line 148
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;

    move-object v4, v0

    .line 149
    .local v4, info:Lcom/android/launcher2/LauncherAppWidgetProviderInfo;
    iget-object v10, v4, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, packageName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/launcher2/DeleteZone;->isSystemPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 152
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    const v11, 0x7f0a0024

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 153
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 155
    :cond_b
    invoke-direct {p0, v6}, Lcom/android/launcher2/DeleteZone;->startUninstallWidgetDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 159
    .end local v4           #info:Lcom/android/launcher2/LauncherAppWidgetProviderInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v10, v0

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d

    .line 160
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->removeGadget(Lcom/android/launcher2/ItemInfo;)V

    .line 162
    :cond_d
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v10

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    goto/16 :goto_2

    .line 177
    .end local p7
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mFadeIn:Landroid/view/animation/Animation;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mFadeOut:Landroid/view/animation/Animation;

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mShrinkToTop:Landroid/view/animation/Animation;

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mStretchFromTop:Landroid/view/animation/Animation;

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    return-void
.end method

.method public onShowError()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteZone;->mErrorShowing:Z

    .line 296
    return-void
.end method

.method setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 303
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 300
    return-void
.end method
