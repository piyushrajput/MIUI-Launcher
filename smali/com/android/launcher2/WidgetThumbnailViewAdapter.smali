.class public Lcom/android/launcher2/WidgetThumbnailViewAdapter;
.super Lcom/android/launcher2/ThumbnailViewAdapter;
.source "WidgetThumbnailViewAdapter.java"


# static fields
.field private static final SHORTCUT_OFFSET:I

.field private static final WIDGET_OFFSET:I

.field private static final sShortcutProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private final mWidgetCellMeasureHeight:I

.field private final mWidgetCellMeasureWidth:I

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetSizeDrawableIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher2/ShortcutProviderInfo;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.ContactShortcut"

    invoke-direct {v1, v2, v3}, Lcom/android/launcher2/ShortcutProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {}, Lcom/android/launcher2/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    .line 38
    sget v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    sget-object v1, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, drawableNames:[Ljava/lang/String;
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    iget-object v4, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    aget-object v5, v0, v1

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 72
    iget-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetCellMeasureWidth:I

    .line 73
    iget-object v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetCellMeasureHeight:I

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 75
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 99
    sget v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v12, v0

    const v13, 0x7f030023

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/OnLongClickWrapper;

    .line 110
    .local v10, resultView:Lcom/android/launcher2/OnLongClickWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v12, v0

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 112
    const/4 v12, 0x1

    move/from16 v0, p1

    move v1, v12

    if-ge v0, v1, :cond_0

    .line 113
    new-instance v6, Lcom/android/launcher2/UserFolderInfo;

    invoke-direct {v6}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 114
    .local v6, info:Lcom/android/launcher2/UserFolderInfo;
    invoke-virtual {v10}, Lcom/android/launcher2/OnLongClickWrapper;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {v10, v6}, Lcom/android/launcher2/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 117
    const v12, 0x7f070050

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 118
    .local v3, icon:Landroid/widget/ImageView;
    const v12, 0x7f02008b

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    const v12, 0x7f070051

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 122
    .local v11, title:Landroid/widget/TextView;
    iget-object v12, v6, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 187
    .end local v3           #icon:Landroid/widget/ImageView;
    .end local v6           #info:Lcom/android/launcher2/UserFolderInfo;
    .end local v11           #title:Landroid/widget/TextView;
    :goto_0
    return-object v10

    .line 125
    :cond_0
    const/4 v12, 0x1

    move v0, v12

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    sget v12, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    move/from16 v0, p1

    move v1, v12

    if-ge v0, v1, :cond_1

    .line 126
    invoke-static {}, Lcom/android/launcher2/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v12

    const/4 v13, 0x1

    sub-int v13, p1, v13

    aget v5, v12, v13

    .line 127
    .local v5, id:I
    invoke-static {v5}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v6

    .line 128
    .local v6, info:Lcom/android/launcher2/gadget/GadgetInfo;
    invoke-virtual {v10, v6}, Lcom/android/launcher2/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 131
    const v12, 0x7f070050

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 132
    .restart local v3       #icon:Landroid/widget/ImageView;
    iget v12, v6, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    const v12, 0x7f070051

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 135
    .restart local v11       #title:Landroid/widget/TextView;
    iget v12, v6, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 136
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    move-object v15, v0

    move-object v0, v6

    iget v0, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    mul-int/lit8 v16, v16, 0x4

    move-object v0, v6

    iget v0, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    sub-int v16, v16, v17

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 139
    .end local v3           #icon:Landroid/widget/ImageView;
    .end local v5           #id:I
    .end local v6           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    .end local v11           #title:Landroid/widget/TextView;
    :cond_1
    sget v12, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    move v0, v12

    move/from16 v1, p1

    if-gt v0, v1, :cond_2

    sget v12, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    move/from16 v0, p1

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 140
    sget-object v12, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    sget v13, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    sub-int v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ShortcutProviderInfo;

    .line 141
    .local v6, info:Lcom/android/launcher2/ShortcutProviderInfo;
    invoke-virtual {v10, v6}, Lcom/android/launcher2/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 144
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 145
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget-object v12, v6, Lcom/android/launcher2/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v9

    .line 146
    .local v9, resource:Landroid/content/res/Resources;
    iget-object v12, v6, Lcom/android/launcher2/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 149
    .local v2, activityInfo:Landroid/content/pm/ActivityInfo;
    const v12, 0x7f070050

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 150
    .restart local v3       #icon:Landroid/widget/ImageView;
    iget v12, v2, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    const v12, 0x7f070051

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 153
    .restart local v11       #title:Landroid/widget/TextView;
    iget v12, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v2           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #icon:Landroid/widget/ImageView;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resource:Landroid/content/res/Resources;
    .end local v11           #title:Landroid/widget/TextView;
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 159
    .end local v6           #info:Lcom/android/launcher2/ShortcutProviderInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    move-object v12, v0

    sget v13, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    sub-int v13, p1, v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    .line 160
    .local v6, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;

    invoke-direct {v7, v6}, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 163
    .local v7, itemInfo:Lcom/android/launcher2/LauncherAppWidgetProviderInfo;
    iget v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v13, v0

    invoke-static {v12, v13}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v12

    iput v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 164
    iget v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v13, v0

    invoke-static {v12, v13}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v12

    iput v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 167
    iget v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetCellMeasureWidth:I

    move v13, v0

    div-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanX:I

    .line 168
    iget v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetCellMeasureHeight:I

    move v13, v0

    div-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanY:I

    .line 169
    invoke-virtual {v10, v7}, Lcom/android/launcher2/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 172
    const v12, 0x7f070050

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 173
    .restart local v3       #icon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v12, v0

    iget-object v13, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 174
    .local v4, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const v12, 0x7f070051

    invoke-virtual {v10, v12}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 178
    .restart local v11       #title:Landroid/widget/TextView;
    iget-object v12, v6, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    move-object v15, v0

    move-object v0, v7

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanX:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x4

    move-object v0, v7

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 183
    iget v12, v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanX:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanX:I

    .line 184
    iget v12, v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanY:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->spanY:I

    goto/16 :goto_0
.end method

.method public reloadWidgets()V
    .locals 4

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    .line 84
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_2

    .line 85
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 86
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v2, "com.miui.player"

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 89
    :cond_1
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 94
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 79
    return-void
.end method
