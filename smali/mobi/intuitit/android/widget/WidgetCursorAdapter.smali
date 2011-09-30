.class public Lmobi/intuitit/android/widget/WidgetCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "WidgetCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;,
        Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;
    }
.end annotation


# static fields
.field static final IMPOSSIBLE_INDEX:I = -0x64

.field static final LOG_TAG:Ljava/lang/String; = "LauncherPP_WCA"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mAllowRequery:Z

.field final mAppWidgetId:I

.field mAppWidgetProvider:Landroid/content/ComponentName;

.field private mContentResolver:Landroid/content/ContentResolver;

.field final mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field final mItemActionUriIndex:I

.field public final mItemChildrenClickable:Z

.field final mItemLayoutId:I

.field mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

.field final mListViewId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/database/Cursor;Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "a"
    .parameter "context"
    .parameter "c"
    .parameter "intent"
    .parameter "provider"
    .parameter "appWidgetId"
    .parameter "listViewId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 105
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAllowRequery:Z

    .line 107
    iput p6, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAppWidgetId:I

    .line 108
    iput p7, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mListViewId:I

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    iput-object p4, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mIntent:Landroid/content/Intent;

    .line 111
    iput-object p5, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAppWidgetProvider:Landroid/content/ComponentName;

    .line 112
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mActivity:Landroid/app/Activity;

    .line 116
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DATA_PROVIDER_ALLOW_REQUERY"

    invoke-virtual {p4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAllowRequery:Z

    .line 120
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_ID"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemLayoutId:I

    .line 121
    iget v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemLayoutId:I

    if-gtz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The passed layout id is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_CHILDREN_CLICKABLE"

    invoke-virtual {p4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemChildrenClickable:Z

    .line 127
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_ACTION_VIEW_URI_INDEX"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemActionUriIndex:I

    .line 131
    invoke-direct {p0, p4}, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->generateItemMapping(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private generateItemMapping(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    .line 147
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_TYPES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 149
    .local v6, viewTypes:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_IDS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 150
    .local v5, viewIds:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_CURSOR_INDICES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 152
    .local v0, cursorIndices:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_DEFAULT_RESOURCES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 154
    .local v1, defaultResources:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_CLICKABLE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    .line 158
    .local v4, viewClickable:[Z
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "A mapping component is missing"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    :cond_1
    array-length v7, v6

    array-length v8, v5

    if-ne v7, v8, :cond_2

    array-length v7, v6

    array-length v8, v0

    if-ne v7, v8, :cond_2

    .line 166
    array-length v3, v6

    .line 167
    .local v3, size:I
    new-array v7, v3, [Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    iput-object v7, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    .line 168
    sub-int v2, v3, v12

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 169
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    new-instance v8, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    aget v9, v6, v2

    aget v10, v5, v2

    aget v11, v0, v2

    invoke-direct {v8, p0, v9, v10, v11}, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;-><init>(Lmobi/intuitit/android/widget/WidgetCursorAdapter;III)V

    aput-object v8, v7, v2

    .line 168
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 163
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Mapping inconsistent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    .restart local v2       #i:I
    .restart local v3       #size:I
    :cond_3
    if-eqz v4, :cond_4

    array-length v7, v4

    if-ne v7, v3, :cond_4

    .line 173
    sub-int v2, v3, v12

    :goto_1
    if-ltz v2, :cond_4

    .line 174
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    aget-object v7, v7, v2

    aget-boolean v8, v4, v2

    iput-boolean v8, v7, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->clickable:Z

    .line 173
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 176
    :cond_4
    if-eqz v1, :cond_5

    array-length v7, v1

    if-ne v7, v3, :cond_5

    .line 177
    sub-int v2, v3, v12

    :goto_2
    if-ltz v2, :cond_5

    .line 178
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    aget-object v7, v7, v2

    aget v8, v1, v2

    iput v8, v7, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    .line 177
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 180
    :cond_5
    return-void
.end method

.method public static queryForNewContent(Landroid/app/Activity;Landroid/content/ContentResolver;Landroid/content/Intent;)Landroid/database/Cursor;
    .locals 9
    .parameter "a"
    .parameter "cr"
    .parameter "intent"

    .prologue
    const-string v8, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    const-string v7, "LauncherPP_WCA"

    .line 302
    const/4 v6, 0x0

    .line 303
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 304
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "mobi.intuitit.android.hpp.EXTRA_PROJECTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SELECTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SELECTION_ARGUMENTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SORT_ORDER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    if-eqz v6, :cond_0

    .line 312
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 321
    :goto_0
    return-object v6

    .line 315
    :cond_0
    const-string v0, "LauncherPP_WCA"

    const-string v0, "cursor null"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "LauncherPP_WCA"

    const-string v0, "intent or activity null"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 184
    iget-object v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    if-nez v13, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    array-length v9, v13

    .line 193
    .local v9, size:I
    const/4 v13, 0x1

    sub-int v5, v9, v13

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 194
    :try_start_0
    iget-object v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;

    aget-object v6, v13, v5

    .line 196
    .local v6, itemMapping:Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->layoutId:I

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, child:Landroid/view/View;
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->type:I

    packed-switch v13, :pswitch_data_0

    .line 255
    :cond_2
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-boolean v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemChildrenClickable:Z

    if-eqz v13, :cond_c

    iget-boolean v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->clickable:Z

    if-eqz v13, :cond_c

    .line 257
    iget v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemActionUriIndex:I

    if-ltz v13, :cond_b

    .line 258
    iget v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemActionUriIndex:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    :goto_3
    new-instance v13, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;

    invoke-direct {v13, p0}, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;-><init>(Lmobi/intuitit/android/widget/WidgetCursorAdapter;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_3
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 200
    :pswitch_0
    instance-of v13, v2, Landroid/widget/TextView;

    if-eqz v13, :cond_2

    .line 202
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, text:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 204
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    .end local v2           #child:Landroid/view/View;
    .end local v6           #itemMapping:Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;
    .end local v10           #text:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 270
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #child:Landroid/view/View;
    .restart local v6       #itemMapping:Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;
    .restart local v10       #text:Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 209
    .end local v10           #text:Ljava/lang/String;
    :pswitch_1
    instance-of v13, v2, Landroid/widget/TextView;

    if-eqz v13, :cond_2

    .line 211
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, textHtml:Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 213
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 216
    :cond_5
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 219
    .end local v11           #textHtml:Ljava/lang/String;
    :pswitch_2
    instance-of v13, v2, Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    .line 221
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 222
    .local v7, iv:Landroid/widget/ImageView;
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 223
    .local v3, data:[B
    if-eqz v3, :cond_6

    .line 224
    const/4 v13, 0x0

    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 225
    :cond_6
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    if-lez v13, :cond_7

    .line 226
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 228
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 231
    .end local v3           #data:[B
    .end local v7           #iv:Landroid/widget/ImageView;
    :pswitch_3
    instance-of v13, v2, Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    .line 233
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 234
    .restart local v7       #iv:Landroid/widget/ImageView;
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, uriStr:Ljava/lang/String;
    if-eqz v12, :cond_8

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 236
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 238
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 241
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v12           #uriStr:Ljava/lang/String;
    :pswitch_4
    instance-of v13, v2, Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    .line 243
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 244
    .restart local v7       #iv:Landroid/widget/ImageView;
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 245
    .local v8, res:I
    if-lez v8, :cond_9

    .line 246
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 247
    :cond_9
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    if-lez v13, :cond_a

    .line 248
    iget v13, v6, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 250
    :cond_a
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 260
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v8           #res:I
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 263
    :cond_c
    iget v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemActionUriIndex:I

    if-ltz v13, :cond_3

    .line 264
    iget v13, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemActionUriIndex:I

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 198
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 277
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mItemLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
